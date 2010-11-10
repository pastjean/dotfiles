for bindir in "$HOME/bin" "$HOME/local/bin" "$HOME/.android-sdk/tools" "$HOME/go/bin"
do

if [ -d $bindir ] ; then
    PATH="$bindir:$PATH"
fi

done

##
#if [ -d "$HOME/.android-sdk" ] ; then
#    PATH="$PATH:$HOME/.android-sdk/tools"
#fi
#
#if [ -d "$HOME/go/bin" ] ; then
#    PATH="$PATH:$HOME/go/bin"
#fi
#

export GOROOT=$HOME/go
export GOARCH=amd64
export GOOS=linux
