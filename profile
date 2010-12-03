for bindir in "$HOME/bin" "$HOME/local/bin"
do
  if [ -d $bindir ] ; then
    PATH="$bindir:$PATH"
  fi
done


if [ -d "$HOME/.android-sdk" ] ; then
  PATH="$PATH:$HOME/.android-sdk/tools"
fi

if [ -d "$HOME/go/bin" ] ; then
  PATH="$PATH:$HOME/go/bin"
fi

export APPS_HOME=$HOME/applications
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk
export CLASSPATH=.

export GROOVY_HOME=$APPS_HOME/groovy
export SCALA_HOME=$APPS_HOME/scala

for jvmlang in $GROOVY_HOME $SCALA_HOME
do
  if [ -d $jvmlang ] ; then
    PATH="$jvmlang/bin:$PATH"
  fi
done

export PROCESSING_HOME=$APPS_HOME/processing
if [ -d $PROCESSING_HOME ] ; then
  PATH="$PROCESSING_HOME:$PATH"
fi

if [ -d "$HOME/.cljr" ];then
  PATH="$HOME/.cljr/bin:$PATH"
fi 

export GOROOT=$HOME/go
export GOARCH=amd64
export GOOS=linux

export PATH=$PATH  
