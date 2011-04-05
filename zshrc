ZSH=$HOME/.zsh
. $ZSH/config.zsh
. $ZSH/aliases.zsh
. $ZSH/completion.zsh
. ~/.profile

if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi


[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

