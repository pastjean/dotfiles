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

# Enabling a file for local configuration (which is not versionned)
if [ -f "$HOME/.profile.local" ]; then
  . "$HOME/.profile.local"
fi

export PATH=$PATH  
