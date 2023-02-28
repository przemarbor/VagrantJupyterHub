#!/bin/bash

### PREREQUISITIES
sudo cp /etc/apt/sources.list /etc/apt/sources.listBKP

sudo tee -a /etc/apt/sources.list<<EOF
deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://security.debian.org/debian-security bullseye-security main
deb-src http://security.debian.org/debian-security bullseye-security main

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

deb http://deb.debian.org/debian bullseye-backports main contrib non-free
deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free
EOF

# sudo apt install virtualbox
# sudo apt install vagrant
# sudo apt install ngrok

vagrant up
vagrant plugin install vagrant-share
vagrant share
