[ -z "$PS1" ] && return

source ~/.bash/config
source ~/.bash/aliases

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
