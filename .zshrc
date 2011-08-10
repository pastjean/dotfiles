PROJECTS=$HOME/projets
ZSH=$HOME/.zsh
. $ZSH/config.zsh
. $ZSH/aliases.zsh
. $ZSH/completion.zsh
. ~/.profile

if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi
