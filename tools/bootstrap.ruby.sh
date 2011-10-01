echo "Installing Ruby 1.9.2 stable and making it the default Ruby ..."
  git clone git://github.com/sstephenson/rbenv.git .rbenv

  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .localrc
  echo 'eval "$(rbenv init -)"' >> .localrc
  source .localrc

  ruby-build 1.9.2-p290
  rbenv global 1.9.2-p290
  rbenv rehash

echo "Installing Bundler, Heroku, Chef, lolcat(for fun)"
  gem install bundler heroku chef lolcat --no-rdoc --no-ri

  rbenv rehash
