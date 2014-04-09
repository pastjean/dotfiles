set FISH_RC (readlink $HOME/.config/fish/config.fish)
set FISH_TOPIC_DIR (dirname $FISH_RC)
set DOTFILES (dirname $FISH_TOPIC_DIR)

# Path
# --------------------

function prepend_to_path -d "Prepend the given dir to PATH if it exists and is not already in it"
    if test -d $argv[1]
        if not contains $argv[1] $PATH
            set -gx PATH "$argv[1]" $PATH
        end
    end
end

prepend_to_path "$HOME/bin"
prepend_to_path "$HOME/local/bin"
prepend_to_path "$HOME/.brew/bin"
prepend_to_path "$HOME/.rbenv/bin"
prepend_to_path "$DOTFILES/bin" $PATH

# Aliases
# --------------------

function ..;    cd ..; end
function ...;   cd ../..; end

# Basic Config
# --------------------

function jesus_fucking_christ_bind_the_fucking_keys_fish
    bind \cn accept-autosuggestion
    bind \cw backward-kill-word
end
function fish_user_keybindings
    jesus_fucking_christ_bind_the_fucking_keys_fish
end
function fish_user_key_bindings
    jesus_fucking_christ_bind_the_fucking_keys_fish
end

set fish_greeting ''
set EDITOR vim
set BROWSER open

function __fish_method_missing --on-event fish_command_not_found
  echo "WHATCHU TYPING ---> $argv"
end

# for FISHFILE in (ls $DOTFILES/**/*.fish)
#  # Don't load file this file
#   if test "$FISHFILE" != "$DOTFILES/fish/config.fish"
#     . $FISHFILE
#   end
# end
# Source all .fish files in dotfile dir


# Set local configs on
# --------------------

set localconfigs "$HOME/.config/fish/local.fish" "$HOME/.local.fish"
if test -f "$HOME/.config/fish/local.fish"
      . $HOME/.config/fish/local.fish
end


# Plugins dir (ala oh-my-zsh)
# ---------------------------

for plugin in (find $FISH_TOPIC_DIR/plugins -name "*.fish")
  . $plugin
end
# Prompt
# --------------------
function git_prompt
    if git root >/dev/null 2>&1
        set_color normal
        printf ' on '
        set_color magenta
        printf '%s' (git currentbranch ^/dev/null)
        set_color green
        git_prompt_status
        set_color normal
    end
end

function prompt_pwd --description 'Print the current working directory, shortend to fit the prompt'
    echo $PWD | sed -e "s|^$HOME|~|"
end

function fish_prompt
  set last_status $status

  if test "$SSH_CONNECTION" != ""
    printf "%s@%s" (whoami) (hostname|cut -d . -f 1)
  end
  
  # fasd -A "$PWD"
    if test $last_status -eq 0
        set_color white -o
        printf '><((°> '
    else
        set_color red -o
        printf '[%d] ><((ˣ> ' $last_status
    end
  
end


if status --is-interactive
#  fortune -s | lolcat
end

true