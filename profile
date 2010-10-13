for bindir in "$HOME/bin" "$HOME/local/bin" "$HOME/.android-sdk/tools" "$HOME/go/bin"
do

if [ -d $bindir ] ; then
    PATH="$bindir:$PATH"
fi

done

#
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi
#if [ -d "$HOME/local/bin" ] ; then
#    PATH="$HOME/local/bin:$PATH"
#fi
#
#
##
#if [ -d "$HOME/.android-sdk" ] ; then
#    PATH="$PATH:$HOME/.android-sdk/tools"
#fi
#
#if [ -d "$HOME/go/bin" ] ; then
#    PATH="$PATH:$HOME/go/bin"
#fi
#
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

export GOROOT=$HOME/go
export GOARCH=amd64
export GOOS=linux
