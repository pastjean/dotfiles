mkdir src

## init rvm
bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
source "$HOME/.rvm/scripts/rvm"
rvm install 1.9.2
rvm use 1.9.2 --default

## init hg
## init node / npm
#echo "Installing node & npm"
#cd src
#git clone git://github.com/joyent/node.git node
#cd node
#./configure --prefix=~/lib/node
#make install
#cd ..
#curl http://npmjs.org/install.sh | sh

## init scala
## init clojure
## init git
## init vim

