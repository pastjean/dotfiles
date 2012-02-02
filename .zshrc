ZSH=$HOME/.zsh

ZSH_THEME="pastjean"

# Set my personnal project dir
PROJECTS=$HOME/projets

plugins=(osx dir nyan)

source $ZSH/zsh.sh

if [[ -a ~/.profile ]]
then
  source ~/.profile
fi

if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

