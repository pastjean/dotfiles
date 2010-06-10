source ~/.bash/aliases
source ~/.bash/paths

if [ -f "$HOME/.bashrc" ]; then
. "$HOME/.bashrc"
fi

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
