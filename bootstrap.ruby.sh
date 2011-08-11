echo "Installing Ruby 1.9.2 stable and making it the default Ruby ..."
  rvm install 1.9.2-p290
  rvm use 1.9.2 --default

echo "Installing Bundler, Heroku, Chef, lolcat(for fun)"
  gem install bundler heroku chef lolcat --no-rdoc --no-ri
