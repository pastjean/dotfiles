set FISH_TOPIC_DIR (dirname (realpath "$HOME/.config/fish/config.fish"))
set DOTFILES (dirname (dirname $FISH_TOPIC_DIR))

function ..;    cd ..; end
function ...;   cd ../..; end
function ....;  cd ../../..; end
function .....; cd ../../../..; end

alias :q exit

# Completions aliases
# -------------------

function make_completion --argument alias command
    complete -c $alias -xa "(
        set -l cmd (commandline -pc | sed -e 's/^ *\S\+ *//' );
        complete -C\"$command \$cmd\";
    )"
end

make_completion g "git"

function prepend_to_path -d "Prepend the given dir to PATH if it exists and is not already in it"
    if test -d $argv[1]
        if not contains $argv[1] $PATH
            set -gx PATH "$argv[1]" $PATH
        end
    end
end

# Env vars
# --------------------

# Dotfiles functions
set -g fish_function_path "$FISH_TOPIC_DIR/functions" $fish_function_path

prepend_to_path "$HOME/local/bin"
prepend_to_path "$HOME/.local/bin"
prepend_to_path "$HOME/.brew/bin"
prepend_to_path "$DOTFILES/bin"
prepend_to_path "$HOME/.fzf/bin/"

set -g -x GOPATH "$HOME/go"
prepend_to_path "$GOPATH/bin"

prepend_to_path "$HOME/bin"

set -g -x fish_greeting ''
set -g -x EDITOR vim
set BROWSER open

# Prompt
# ------


set fish_prompt_pwd_dir_length 3

set __fish_git_prompt_color brblack
set __fish_git_prompt_color_branch brblack
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_color_dirtystate brblack

set __fish_git_prompt_char_stateseparator ''

set __fish_git_prompt_showupstream 'auto'
set __fish_git_prompt_color_upstream brblue
set __fish_git_prompt_char_upstream_ahead '⇡'
set __fish_git_prompt_char_upstream_behind '⇣'
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_diverged ' ↕'
set __fish_git_prompt_char_upstream_prefix ' '

set -g fish_color_hg_clean brblack
set -g fish_color_hg_modified brblack
set -g fish_color_hg_dirty brblack

function fish_prompt
  set last_status $status # this must be the first line

  set -l normal (set_color normal)
  #__fish_hg_prompt
  # __fish_git_prompt
  set_color blue
  printf "%s $normal%s%s\n" (prompt_pwd) (__fish_git_prompt "⑂ %s") (__fish_hg_prompt)

  if test "$SSH_CONNECTION" != ""
    printf "%s@%s " (whoami) (hostname|cut -d . -f 1)
  end

  fasd -A "$PWD"
    if test $last_status -eq 0
        set_color green -o
        printf 'λ  '
    else
        set_color red -o
        printf 'x  ' $last_status
    end

    set_color normal
end

# Local settings
# --------------
if test -f $HOME/.local.fish
    . $HOME/.local.fish
end

zoxide init fish | source

# osx
# --------------
function pfd
  echo '
   tell application "Finder"
     return POSIX path of (target of window 1 as alias)
   end tell
  ' | osascript - ^/dev/null
end

function cdf
  cd (pfd)
end

true

set -g -x GPG_TTY (tty)
