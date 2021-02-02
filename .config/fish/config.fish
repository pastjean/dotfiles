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

# Vars & Aliases
# --------------------

function ..
    cd ..
end
function ...
    cd ../..
end
function ....
    cd ../../..
end
function .....
    cd ../../../..
end

alias :q exit

set FISH_TOPIC_DIR (dirname (realpath "$HOME/.config/fish/config.fish"))
set DOTFILES (dirname (dirname $FISH_TOPIC_DIR))

# Dotfiles functions
set -g fish_function_path "$FISH_TOPIC_DIR/functions" $fish_function_path

set -g -x PATH "$HOME/bin" $PATH
set -g -x PATH "$HOME/.brew/bin" "$HOME/.brew/sbin" $PATH
set -g -x PATH "$DOTFILES/bin" $PATH

set -g -x PATH "$HOME/.fzf/bin/" $PATH
set -g -x PATH "$HOME/go/bin" $PATH
set -g -x PATH "$HOME/.cargo/bin" $PATH
set -g -x PATH "$HOME/.rbenv/shims" $PATH

set -g -x fish_greeting ''
set -g -x EDITOR vim
set -g -x GPG_TTY (tty)

set BROWSER open

zoxide init fish | source
starship init fish | source
status --is-interactive; and source (rbenv init -|psub)

# Local settings
# --------------
if test -f $HOME/.local.fish
    source $HOME/.local.fish
end
true
