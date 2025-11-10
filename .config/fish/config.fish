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


set FISH_TOPIC_DIR (dirname (realpath "$HOME/.config/fish/config.fish"))
set DOTFILES (dirname (dirname $FISH_TOPIC_DIR))

# Dotfiles functions
set -g fish_function_path "$FISH_TOPIC_DIR/functions" $fish_function_path

set -g -x PATH "$HOME/bin" $PATH
set -g -x PATH "$DOTFILES/bin" $PATH

set -g -x PATH "$HOME/go/bin" $PATH
set -g -x PATH "$HOME/.cargo/bin" $PATH

set -g -x PATH "$HOME/.fzf/bin/" $PATH

set -g -x fish_greeting ''
set -g -x EDITOR vim
set -g -x GPG_TTY (tty)

set BROWSER open

# Local settings
# --------------
if test -f $HOME/.local.fish
    source $HOME/.local.fish
end

set -g -x PATH /opt/homebrew/bin $PATH
/opt/homebrew/bin/brew shellenv | source

starship init fish | source
zoxide init fish | source
source "$HOME/.cargo/env.fish"

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

# Added by `rbenv init` on Mon  7 Apr 2025 10:16:54 EDT
status --is-interactive; and rbenv init - --no-rehash fish | source

status --is-interactive; and pyenv init - fish | source
fish_add_path $HOME/.local/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
