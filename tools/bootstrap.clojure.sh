#!/bin/sh

echo "Bootstraping clojure"
curl https://raw.github.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein
chmod +x ~/bin/lein


