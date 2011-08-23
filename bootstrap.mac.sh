#!/bin/sh

# install homebrew in /usr/local
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
# there is alternative
curl https://github.com/mxcl/homebrew/tarball/master | tar -xvf

brew install wget
brew install git
brew install macvim
