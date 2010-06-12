if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -x $BASH_VERSION ] ; then
    source ~/.bash_profile
fi
