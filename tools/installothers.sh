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

/usr/bin/env zsh
source ~/.zshrc
