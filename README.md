My dotfiles
===========

Thoses are my dotfiles, principally for:

* vim
* zsh

There will surely be other addons.

Based on : http://github.com/ryanb/dotfiles

Installation
-------------
    curl https://raw.github.com/pastjean/dotfiles/master/bootstrap.sh -o - | bash

Or manually:

    git clone git://github.com/pastjean/dotfiles 
    cd dotfiles
    bash install.sh

OSX Defaults
------------

Setup default OSX preferences

    bash $HOME/.osx

For Homebrew (http://mxcl.github.com/homebrew/)
------------

Personally I prefer to install homebrew in my user dir and not pollute my systems.

    DIR=$HOME/.brew
    mkdir -p $DIR
    curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C $DIR

    echo 'export PATH=$DIR/bin:$PATH' >> .localrc
    export PATH=$DIR/bin:$PATH

For Ruby
--------

make a rbenv + ruby-build setup


For Node.js
-----------

install node plz

For Clojure
-----------

still want clojure ?
