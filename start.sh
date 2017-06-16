#!/bin/bash
# Make a quick ubuntu set up to host dojo-app
#  - really quick and dirty, use it as memo -
#170616.1020

quasar build
sudo rm -rf /var/www/html
sudo ln -s /home/ubuntu/dojo-app/dist/ /var/www/html 

# Edit cron to keep the app updated
# 0 * * * * cd /home/ubuntu/dojo-app; if git pull | grep -q -v 'Already up-to-date.' ; then npm i && quasar build; else echo 'Nothing to do'; fi

#echo "pour juste voir si cela marche sans avoir de serveur web, après le quasar build, aller dans ./dist et faire tourner ceci: 'python3 -m http.server 8080'"

