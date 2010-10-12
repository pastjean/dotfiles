if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

if [ -d "$HOME/.android-sdk" ] ; then
    PATH="$PATH:$HOME/.android-sdk/tools"
fi

if [ -d "$HOME/go/bin" ] ; then
    PATH="$PATH:$HOME/go/bin"
fi

export GOROOT=$HOME/go
export GOARCH=amd64
export GOOS=linux
