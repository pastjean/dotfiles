if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -x $BASH_VERSION ] ; then
    source ~/.bash_profile
fi

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
export GOROOT=$HOME/go
export GOARCH=amd64
export GOOS=linux
