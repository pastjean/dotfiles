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
set -g fish_complete_path "$FISH_TOPIC_DIR/completions" $fish_complete_path

fish_add_path $HOME/bin
fish_add_path $DOTFILES/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.fzf/bin/

set -g -x fish_greeting ''
set -g -x EDITOR vim
set -g -x GPG_TTY (tty)

set BROWSER open

# Local settings
# --------------
if test -f $HOME/.local.fish
    source $HOME/.local.fish
end

fish_add_path /opt/homebrew/bin
/opt/homebrew/bin/brew shellenv | source

starship init fish | source
zoxide init fish | source

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

fish_add_path $HOME/.local/bin

# opencode
fish_add_path /Users/pa/.opencode/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
fish_add_path $BUN_INSTALL/bin
