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
prepend_to_path "$HOME/.rbenv/shims"
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
function prompt_pwd --description 'Print the current working directory, shortend to fit the prompt'
    echo $PWD | sed -e "s|^$HOME|~|"
end

function fish_prompt
  set last_status $status
end

function to_human_time -d "Turn a timestamp (in s) to a readable time 165392 => 1d 21h 56m 32s"
  set tmp $argv[1]
  set days (math "$tmp / 60 / 60 / 24")
  set hours (math "$tmp / 60 / 60 % 24")
  set minutes (math "$tmp /60 % 60")
  set seconds (math "$tmp % 60")
  
  set str ""
  test "$days" -gt "0"; and set str "$str "$days"d"
  test "$hours" -gt "0"; and set str "$str "$hours"h"
  test "$minutes" -gt "0"; and set str "$str "$minutes"m"
  set str "$str "$seconds"s"
  echo "$str"
end

function git_dirty -d "Check if we are in a git repo and if it is dirty"
 git rev-parse --is-inside-work-tree ^/dev/null;and echo "hello"
#; and set ingit 0\
  if test 0 -eq $ingit
  echo "ingit"
  end

  # (git diff --quiet --ignore-submodules HEAD ; or echo "*")
end

function fish_prompt
  set last_status $status

  if test "$SSH_CONNECTION" != ""
    printf "%s@%s" (whoami) (hostname|cut -d . -f 1)
  end
  
  # fasd -A "$PWD"
    if test $last_status -eq 0
        set_color magenta -o
        printf '❯ '
    else
        set_color red -o
        printf '❯ ' $last_status
    end
  
end


if status --is-interactive
#  fortune -s | lolcat
end

true
