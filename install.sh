#!/bin/bash
DIR="$( cd $( dirname $0 ) && pwd )"

export DOTFILES_DIR=$DIR
export DESTINATION=$HOME

# Some Utility Functionssss

# short
# takes the path passed as first parameter and replace $HOME long path to ~
#
# ex:
#   short "/home/pastjean/happy/halloween.txt"
#   # returns ~/happy/halloween.txt
short() {
  echo "~${1#$HOME}"
}

# If we are testing dont execute for real just echo some things
if [[ "$@" =~ "test" ]];then
  export TESTING="true"
  echo 'Testing......'
  echo ""
  install() {
    echo "Testing install: $@"
    bash "$@"
  }
  link() {
    echo "Testing linking: $@"
  }
else
  install() {
    # ln   $@
    echo "running $@"
    bash "$@"
  }
  link() {
    LILL1=$(short "$1")
    LILL2=$(short "$2")
    echo "linking $LILL1 to $LILL2"
    ln -s "$1" "$2" 
  }
fi

# Here the action starts
# ----------------------

# Link symlinks
SYMLINKS="$DIR/**/*.symlink"

skipAll=""
overwriteAll=""
backupAll=""

for LINK in $SYMLINKS
do
  overwrite=""
  backup=""
  skip=""

  FILE=".$(basename $LINK | sed -e 's/\.symlink//')"
  TARGET="$DESTINATION/$FILE"

    if [[ -f $TARGET  && "$skipAll$overwriteAll$backupAll" == "" ]]
    then
      # File exists
      echo "File $TARGET exists, what do you want to do?\n [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
      read action

      [[ "$action" == "s" ]] && skip="true"
      [[ "$action" == "S" ]] && skipAll="true"
      [[ "$action" == "o" ]] && overwrite="true"
      [[ "$action" == "O" ]] && overwriteAll="true"
      [[ "$action" == "b" ]] && backup="true"
      [[ "$action" == "B" ]] && backupAll="true"
    fi

    if [[ "$skipAll" == "" ]]
    then
      [[ "$overwriteAll" == "true" || "$overwrite" == "true" ]] && rm -rf $TARGET
      [[ "$backupAll" == "true" || "$backup" == "true" ]] && mv "$TARGET" "$DESTINATION/$FILE.backup"

      link "$LINK" "$TARGET"
    fi
done


# Custom install scripts
CUSTOM_INSTALL="$DIR/**/*.install.sh"

for INSTALL_SCRIPT in $CUSTOM_INSTALL
do
  if [[ "$INSTALL_SCRIPT" != "$DIR/tools/install.sh" ]]
  then
    install "$INSTALL_SCRIPT"
  fi;
done
