#!/bin/bash

## Fetch from git
if [[ ! -a dotfiles ]] 
then
  git clone https://pastjean@github.com/pastjean/dotfiles.git dotfiles  
fi;

if [[ ! -d dotfiles ]]
then
  echo "dotfiles is not a dir ... what are you doing"
  exit 1
fi;

cd dotfiles

mkdir -p ~/bin

## Link files
for file in $(ls -A | egrep -v "\.git/|\.gitignore|bootstrap|README.md|Rakefile";ls -A bin/*)
do
 if [[ $(find -L $HOME -maxdepth 1 -xtype l -samefile $file -print) != "" ]]
 then
    echo "identical $file"
  else
    echo "link $file to $HOME/$file"
    ln -is $(pwd)/$file $HOME/$file
 fi;
done


echo "Thoses are the file that were possibly replaced in the process!!! look at them"
for dir in $HOME $HOME/bin
do
  find $dir -maxdepth 1 -name \*.bak
done
