[ -z "$PS1" ] && return


source ~/.bash/paths
source ~/.bash/config
source ~/.bash/aliases

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
