set FISH_RC (readlink $HOME/.config/fish/config.fish)
set FISH_TOPIC_DIR (dirname $FISH_RC)
set DOTFILES (dirname $FISH_TOPIC_DIR)

function ..;    cd ..; end
function ...;   cd ../..; end
function ....;  cd ../../..; end
function .....; cd ../../../..; end

function reload
    source ~/.config/fish/config.fish
end

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

# Plugins dir (ala oh-my-zsh)
# ---------------------------

for plugin in (find $FISH_TOPIC_DIR/plugins -name "*.fish")
  . $plugin
end

# Env vars
# --------------------

prepend_to_path "$HOME/bin"
prepend_to_path "$HOME/local/bin"
prepend_to_path "$HOME/.brew/bin"
prepend_to_path "$DOTFILES/bin"
prepend_to_path "$HOME/.fzf/bin/"

set -g -x GOPATH "$HOME/go"
prepend_to_path "$HOME/go/bin"

set -g -x fish_greeting ''
set -g -x EDITOR vim
set BROWSER open

# Prompt
# ------


set fish_prompt_pwd_dir_length 3

#set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'yes'
#set __fish_git_prompt_color_dirtystate brblack
#set __fish_git_prompt_color_branch brblack
set __fish_git_prompt_color_upstream_ahead brblue
set __fish_git_prompt_color_upstream_behind brblue
set __fish_git_prompt_char_upstream_ahead ' ⇡'
set __fish_git_prompt_char_upstream_behind ' ⇣'
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_diverged ' ↕'
#set __fish_git_prompt_char_stateseparator ''

function fish_prompt
  #__fish_hg_prompt
  # __fish_git_prompt
  set_color blue
  printf '%s ' (prompt_pwd)
  set_color black
  printf '%s\n' (__fish_git_prompt)

  set last_status $status

  if test "$SSH_CONNECTION" != ""
    printf "%s@%s " (whoami) (hostname|cut -d . -f 1)
  end

  fasd -A "$PWD"
    if test $last_status -eq 0
        set_color green -o
        printf 'λ  '
    else
        set_color red -o
        printf '⚡  ' $last_status
    end

    set_color normal
end

# Local settings
# --------------
if test -f $HOME/.local.fish
    . $HOME/.local.fish
end

true
