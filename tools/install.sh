# Used oh-my-zsh auto setup script

# if [ -d ~/.oh-my-zsh ]
# then
#   echo "\033[0;33mYou already have Oh My Zsh installed.\033[0m You'll need to remove ~/.oh-my-zsh if you want to install"
#   exit
# fi

echo "\033[0;34mCloning dotfilesOh My Zsh...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/pastjean/dotfiles.git ~/.dotfiles || {
  echo "git not installed"
  exit
}
############################################################################
# Begin
############################################################################

    # dotfiles
    git clone git://github.com/pastjean/dotfiles 
    cd ~/.dotfiles
    bash install.sh

    # homebrew
    mkdir -p ~/.brew
    curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C ~/.brew

    echo 'export PATH=~/.brew/bin:$PATH' >> .localrc
    export PATH=~/.brew/bin:$PATH

    # rbenv
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.localrc
    echo 'eval "$(rbenv init -)"' >> ~/.localrc

    # ruby-build
    mkdir -p ~/.rbenv/plugins
    cd ~/.rbenv/plugins
    git clone git://github.com/sstephenson/ruby-build.git
    
    # oh my zsh
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    chsh -s /bin/zsh

    echo "Restart your shell buddy"


############################################################################
# Done
############################################################################



echo "\033[0;32m"' ____  ____  _____  _____ _  _     _____ ____  '"\033[0m"
echo "\033[0;32m"'/  _ \/  _ \/__ __\/    // \/ \   /  __// ___\ '"\033[0m"
echo "\033[0;32m"'| | \|| / \|  / \  |  __\| || |   |  \  |    \ '"\033[0m"
echo "\033[0;32m"'| |_/|| \_/|  | |  | |   | || |_/\|  /_ \___ | '"\033[0m"
echo "\033[0;32m"'\____/\____/  \_/  \_/   \_/\____/\____\\____/ '"\033[0m"

echo "\n\n \033[0;32m....is now installed.\033[0m"
echo "\n \033[0;32mRestart you shell buddy\033[0m"
/usr/bin/env zsh
source ~/.zshrc
