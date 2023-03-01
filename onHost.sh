#!/bin/bash

### PREREQUISITIES
sudo cp /etc/apt/sources.list /etc/apt/sources.listBKP

sudo tee -a /etc/apt/sources.list<<EOF
deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://security.debian.org/debian-security bullseye-security main contrib
deb-src http://security.debian.org/debian-security bullseye-security main contrib

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

deb http://deb.debian.org/debian bullseye-backports main contrib non-free
deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free
EOF

sudo apt install fasttrack-archive-keyring

sudo tee -a /etc/apt/sources.list<<EOF
deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib
deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-backports-staging main contrib
EOF

sudo apt install virtualbox
# sudo apt install vagrant
wget -O ~/vagrant_2.3.4.zip https://releases.hashicorp.com/vagrant/2.3.4/vagrant_2.3.4_linux_amd64.zip
unzip  ~/vagrant_2.3.4.zip 
mkdir ~/bin
export PATH="~/bin:$PATH"
mv vagrant ~/bin/vagrant_2.3.4 
cp ~/bin/vagrant_2.3.4 ~/bin/vagrant


# sudo apt install ngrok

vagrant up
vagrant plugin install vagrant-share
vagrant share
