set FISH_RC (readlink $HOME/.config/fish/config.fish)
set FISH_TOPIC_DIR (dirname $FISH_RC)
set DOTFILES (dirname $FISH_TOPIC_DIR)

function ..;    cd ..; end
function ...;   cd ../..; end
function ....;  cd ../../..; end
function .....; cd ../../../..; end

# I give up, vim style
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

# Basic Config
# ------------

function __fish_method_missing --on-event fish_command_not_found
#  echo "WHATCHU TYPING ---> $argv"
end


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

function fish_prompt
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
        printf '😱  ' $last_status
    end

end

# Local settings
# --------------
if test -f $HOME/.local.fish
    . $HOME/.local.fish
end

true
