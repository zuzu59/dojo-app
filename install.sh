#!/bin/bash
# Make a quick ubuntu set up to host dojo-app
#  - really quick and dirty, use it as memo -
#170608.1113


if [ ! -w /etc/passwd ]; then
	echo "Super-user privileges are required.  Please run this with 'sudo ./install.sh'." >&2
	exit 1
fi

# Update
apt update

# Install node 7
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

# Some packages
sudo apt install -y nodejs git vim npm tmux lighttpd 

sudo npm install -g quasar-cli

# set up dojo-app
cd /home/ubuntu/
git clone git@github.com:epfl-dojo/dojo-app.git
cd dojo-app
npm install
quasar build
sudo rm -rf /var/www/html
sudo ln -s /home/ubuntu/dojo-app/dist/ /var/www/html 

# Edit cron to keep the app updated
# 0 * * * * cd /home/ubuntu/dojo-app; if git pull | grep -q -v 'Already up-to-date.' ; then npm i && quasar build; else echo 'Nothing to do'; fi

