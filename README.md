dotfiles
========

Dotfiles are your $CASTLE and you should personalize your $CASTLE how you like it. So get on it, personalize your settings and save them in an easy to bootstrap repository like this one.

![Nice prompt](https://raw.github.com/pastjean/dotfiles/master/tools/ohmyzsh-capture.png)

install
-------

### 1. Get apple developper tools (for homebrew, compilers and git)
    https://developer.apple.com/downloads/

### 2. Bootstrap it via `curl` (it's really only a git clone tough)
    curl -L https://raw.github.com/pastjean/dotfiles/master/tools/bootstrap.sh | sh

### 2. manual directory specification
    curl -L https://raw.github.com/pastjean/dotfiles/master/tools/bootstrap.sh | DOTFILES_DIR="<the-dir>" sh

### 2. via `wget`
    wget --no-check-certificate https://raw.github.com/pastjean/dotfiles/master/tools/bootstrap.sh -O - | sh



OSX Defaults
------------

Setup default OSX preferences

    bash $DOTFILES/osx/defaults

[Homebrew](http://mxcl.github.com/homebrew/)
--------------------------------------------

Personally I prefer to install homebrew in my $HOME dir and not pollute my system.

    DIR=$HOME/.brew
    mkdir -p $DIR
    curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C $DIR

    echo 'export PATH=$DIR/bin:$PATH' >> .localrc
    export PATH=$DIR/bin:$PATH

[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
------------------------------------------------------

    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh



How it works
------------


- **bin/**: `bin/` directory will be added to `$PATH`.
- **topic/\*.install.sh**: Any file named \*install.sh will get loaded on installation by bash
  of the shell
- **topic/\*.fish**: Any files ending in `.fish` gets loaded by fish the shell
- **topic/\*.symlink**: Any files ending in `.symlink` get symlinked into
  your `$HOME`. 

thanks
------
- @ryanb http://github.com/ryanb/dotfiles 
- @sjl
- @holman (topics) https://github.com/holman/dotfiles
