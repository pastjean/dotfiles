# Adds git autocompletion to current shell if git was installed through homebrew

$(which brew)
if test -f $(which brew)
then

  completion=$(brew --prefix)/etc/bash_completion.d/git-completion.bash

  if test -f $completion
  then
    source $completion
  fi
fi
