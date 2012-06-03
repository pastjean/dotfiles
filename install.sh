#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
DEST_DIR=$HOME

if [ "$1" == "test" ];then
  echo "testing......"
  DEST_DIR=$DIR/test_install_script
  mkdir $DEST_DIR
fi

mkdir -p $DEST_DIR/bin

cd $DIR
FILES_TO_LINK=$(ls -A | grep -v -e ".git" -e ".gitignore" -e "tools" -e "README.md" -e "DS_Store" -e "bin" ; ls -A bin/*)


# Link files
for file in $FILES_TO_LINK
do
 if [[ $(find -L $DEST_DIR -maxdepth 1 -samefile $file -print) != "" ]]
 then
    echo "identical $file"
  else
    echo "link $file to $DEST_DIR/$file"
    ln -nis $DIR/$file $DEST_DIR/$file
 fi;
done
