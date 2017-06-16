#!/bin/bash
# Make a quick ubuntu set up to host dojo-app
#  - really quick and dirty, use it as memo -
#170616.1020

#pour tout désintaller rapidement pour tester le script install.sh
sudo rm -rf bin/node bin/node-waf include/node lib/node lib/pkgconfig/nodejs.pc share/man/man1/node
sudo rm -R node_modules/ dist/

# Install node 7
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

npm install
#sudo npm install -g quasar-cli

# Installe some packages
sudo apt-get install -y git vim tmux lighttpd w3m

# Edit cron to keep the app updated
# 0 * * * * cd /home/ubuntu/dojo-app; if git pull | grep -q -v 'Already up-to-date.' ; then npm i && quasar build; else echo 'Nothing to do'; fi

#echo "pour juste voir si cela marche sans avoir de serveur web, après le quasar build, aller dans ./dist et faire tourner ceci: 'python3 -m http.server 8080'"

