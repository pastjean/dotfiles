#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
DEST_DIR=$HOME

if [ "$1" == "test" ];then
  echo "testing......"
  DEST_DIR=$DIR/test_install_script
  mkdir $DEST_DIR
fi

mkdir -p $DEST_DIR/bin

FILES_TO_LINK=$(ls -A | grep -v -e ".git" -e ".gitignore" -e "tools" -e "README.md" -e "DS_Store" -e "bin" ; ls -A bin/*)

# Link files
for file in $FILES_TO_LINK
do
 if [[ $(find -L $DEST_DIR -maxdepth 1 -samefile $file -print) != "" ]]
 then
    echo "identical $file"
  else
    echo "link $file to $DEST_DIR/$file"
    ln -is $DIR/$file $DEST_DIR/$file
 fi;
done


echo "Thoses are the file that were possibly replaced in the process!!! look at them"
for dir in $DEST_DIR $DEST_DIR/bin
do
  find $dir -maxdepth 1 -name \*.bak
done
