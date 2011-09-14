for bindir in "$HOME/bin" "$HOME/local/bin"
do
  if [ -d $bindir ] ; then
    PATH="$bindir:$PATH"
  fi
done

export PATH=$PATH  
