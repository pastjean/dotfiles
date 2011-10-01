#!/bin/sh

mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install

curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install # ok, fine, this step probably takes more than 30 seconds...

# installing npm
curl http://npmjs.org/install.sh | sh
