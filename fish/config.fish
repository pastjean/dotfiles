set fish_greeting
set EDITOR vim

alias g 'git'
alias v 'vim'
alias o 'open'
alias j 'z'

alias pbc 'pbcopy'
alias pbp 'pbpaste'


set PATH "$HOME/bin" $PATH
set PATH "$HOME/local/bin" $PATH
set PATH "$HOME/.brew/bin" $PATH
set PATH "$HOME/.rbenv/bin" $PATH

set BROWSER open

set DOTFILES (dirname (dirname (readlink $HOME/.config/fish/config.fish)))

set PATH "$DOTFILES/bin" $PATH

for FISHFILE in (ls $DOTFILES/**/*.fish)
  # Don't load file this file
  if test "$FISHFILE" != "$DOTFILES/fish/config.fish"
    . $FISHFILE
  end
end
# Source all .fish files in dotfile dir

if test -z (which git-prompt-status)
  function git-prompt-status
  printf ''
  end
end

function git_prompt
  if git rev-parse --show-toplevel >/dev/null 2>&1
    set_color normal
    printf ' on %s ' \u2b60
    set_color magenta
    printf '%s' (git branch --contains HEAD | grep '*' | tr -s ' ' | cut -d ' ' -f2 ^/dev/null)
    set_color green
    git-prompt-status
    set_color normal
  end
end

function fish_prompt
  set last_status $status

  z --add "$PWD"

  set_color magenta
  printf '%s' (whoami)
  
  set_color normal
  printf ' at '
  set_color yellow
  printf '%s' (hostname|cut -d . -f 1)
  
  set_color normal
  printf ' in '
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  git_prompt

  echo

  if test $last_status -eq 0
    set_color white -o
    printf '><((°> '
  else
    set_color red -o
    printf '[%d] ><((ˣ> ' $last_status
  end

  set_color normal
end


if test -s $HOME/.config/fish/local.fish
      source $HOME/.config/fish/local.fish
end

if status --is-interactive
  fortune -s | lolcat
end
function __fish_method_missing --on-event fish_command_not_found
  echo "WHATCHU TYPING ---> $argv"
end
