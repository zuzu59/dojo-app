#!/bin/bash
# Make a quick ubuntu set up to host dojo-app
#  - really quick and dirty, use it as memo -
#170616.0924

# Install node 7
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#npm install
#sudo npm install -g quasar-cli


# Installe some packages
#sudo apt-get install -y git vim tmux lighttpd w3m

# set up dojo-app
#cd /home/ubuntu/
#git clone git@github.com:epfl-dojo/dojo-app.git
#cd dojo-app
#npm install
#quasar build
#sudo rm -rf /var/www/html
#sudo ln -s /home/ubuntu/dojo-app/dist/ /var/www/html 

# Edit cron to keep the app updated
# 0 * * * * cd /home/ubuntu/dojo-app; if git pull | grep -q -v 'Already up-to-date.' ; then npm i && quasar build; else echo 'Nothing to do'; fi

#echo "pour juste voir si cela marche sans avoir de serveur web, après le quasar build, aller dans ./dist et faire tourner ceci: 'python3 -m http.server 8080'"

