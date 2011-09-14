ZSH=$HOME/.zsh

# Set my personnal project dir
PROJECTS=$HOME/projets

plugins=()

source $ZSH/zsh.sh
source ~/.profile

if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

