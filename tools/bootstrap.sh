#!/bin/bash

## Fetch from git
if [[ ! -a dotfiles ]] 
then
  git clone https://github.com/pastjean/dotfiles.git dotfiles  
fi;

if [[ ! -d dotfiles ]]
then
  echo "dotfiles is not a dir ... what are you doing"
  exit 1
fi;

cd dotfiles

bash tools/install.sh
