My dotfiles
===========

Thoses are my dotfiles, principally for:

* vim
* zsh

There will surely be other addons.

Based on : http://github.com/ryanb/dotfiles

Installation
-------------
    curl https://raw.github.com/pastjean/dotfiles/master/tools/bootstrap.sh -o - | bash

Or manually:

    git clone git://github.com/pastjean/dotfiles 
    cd dotfiles
    bash tools/install.sh


For Homebrew (http://mxcl.github.com/homebrew/)
------------

    DIR=$HOME/.brew
    mkdir -p $DIR
    curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C $DIR

    echo 'export PATH=$DIR/bin:$PATH' >> .localrc
    export PATH=$DIR/bin:$PATH

For Ruby
--------
    curl https://raw.github.com/pastjean/dotfiles/master/tools/bootstrap.ruby.sh -o - | bash

For Node.js
--------
    curl https://raw.github.com/pastjean/dotfiles/master/tools/bootstrap.node.sh -o - | bash

For Clojure
--------
    curl https://raw.github.com/pastjean/dotfiles/master/tools/bootstrap.clojure.sh -o - | bash
