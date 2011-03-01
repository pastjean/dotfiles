if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

for bindir in "$HOME/bin" "$HOME/local/bin"
do
  if [ -d $bindir ] ; then
    PATH="$bindir:$PATH"
  fi
done

export ANDROID_SDK_HOME=$HOMR/.android-sdk
if [ -d $ANDROID_SDK_HOME ] ; then
  PATH="$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools:$PATH"
fi

export SCALA_HOME=~/local/scala
export JRUBY_HOME=~/local/jruby

for i in $SCALA_HOME $JRUBY_HOME
do
  if [ -d $i ] ; then
    PATH="$i/bin:$PATH"
  fi
done

PATH=/home/pastjean/.cljr/bin:$PATH

export PATH=$PATH  
