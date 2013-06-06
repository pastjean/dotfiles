dotfiles
========

Dotfiles are your $CASTLE and you should personalize your $CASTLE how you like it. So get on it, personalize your settings and save them in an easy to bootstrap repository like this one.

![Nice prompt](https://raw.github.com/pastjean/dotfiles/master/tools/ohmyzsh-capture.png)

install
-------

### via `curl`
    curl -L https://github.com/pastjean/dotfiles/raw/master/tools/bootstrap.sh | sh
    # if you want to change de destination dir use instead
    curl -L https://github.com/pastjean/dotfiles/raw/master/tools/bootstrap.sh | DESTINATION_DIR="<the-dir>" sh


### via `wget`
    wget --no-check-certificate https://github.com/pastjean/dotfiles/raw/master/tools/install.sh -O - | sh

how it works
------------


- **bin/**: `bin/` directory will be added to `$PATH`.
- **topic/\*.install.sh**: Any file named \*install.sh will get loaded on installation by bash
  of the shell
- **topic/\*.fish**: Any files ending in `.fish` gets loaded by fish the shell
- **topic/\*.symlink**: Any files ending in `.symlink` get symlinked into
  your `$HOME`. 


OSX Defaults
------------

Setup default OSX preferences

    bash $DOTFILES/osx/defaults

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
- @sjl

And the topical part from holman
- @holman https://github.com/holman/dotfiles
