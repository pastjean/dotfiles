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

#for jvmlang in $GROOVY_HOME $SCALA_HOME
#do
#  if [ -d $jvmlang ] ; then
#    PATH="$jvmlang/bin:$PATH"
#  fi
#done
#
#export PATH=$PATH  
