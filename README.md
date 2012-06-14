dotfiles
========

Dotfiles are your $CASTLE and you should personalize your $CASTLE how you like it. So get on it, personalize your settings and save them in an easy to bootstrap repository like this one.

![Nice prompt](http://i.imgur.com/7R1GB.jpg)

![Vimmmmm](http://i.imgur.com/aQbzT.jpg)
install
-------
    # doesn't work anymore
    curl https://raw.github.com/pastjean/dotfiles/master/bootstrap.sh -o - | bash

Or manually:

    git clone git://github.com/pastjean/dotfiles 
    cd dotfiles
    bash install.sh

how it works
------------


- **bin/**: `bin/` directory will be added to `$PATH`.
- **topic/install.sh**: Any file named install.sh will get loaded on installation by bash
  of the shell
- **topic/\*.fish**: Any files ending in `.fish` gets loaded by fish the shell
- **topic/\*.symlink**: Any files ending in `.symlink` get symlinked into
  your `$HOME`. 


### Old ZSH things

- **$HOME/.localrc**: a file named `.localrc` can be created and will be loaded
  at the start of the shell.
- **topic/\*.zsh**: Any files ending in `.zsh` gets loaded by zsh at the start
  of the shell
- **topic/\*.completion.sh**: Any files ending in `completion.sh` get loaded
  last so that they get loaded after we set up zsh autocomplete functions.

OSX Defaults
------------

Setup default OSX preferences

    bash $HOME/.osx

[Homebrew](http://mxcl.github.com/homebrew/)
--------------------------------------------

Personally I prefer to install homebrew in my $HOME dir and not pollute my systems.

    DIR=$HOME/.brew
    mkdir -p $DIR
    curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C $DIR

    echo 'export PATH=$DIR/bin:$PATH' >> .localrc
    export PATH=$DIR/bin:$PATH

Homebrew apps

    brew install ack ctags git hub


add-ons
-------

    # for more colors in commands like in ls
    brew install grc

    # Betters commands like `ls` most are prefixed by g (ie: `gls` for `ls`) but
    # some are aliased
    brew install coreutils

thanks
------
- @ryanb http://github.com/ryanb/dotfiles 

And the topical part from holman
- @holman https://github.com/holman/dotfiles

- @sjl
