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

sudo apt update && upgrade -y

# sudo apt install octave -y # this is heavy > 1GB
# moze lepiej tak jak tu:
# https://www.gatyagumilang.com/install-octave-kernel-in-jupyter/
sudo apt-get install -y --no-install-recommends octave octave-symbolic octave-miscellaneous python-sympy gnuplot ghostscript -y


sudo apt install python3 python3-dev git curl -y 
curl -L https://tljh.jupyter.org/bootstrap.py | sudo -E python3 - --admin vagrantMenda

# you should have littlest jupyterhub running
# to configure it:
# https://tljh.jupyter.org/en/latest/install/custom-server.html

wget https://github.com/odewahn/ipynb-examples/blob/master/Octave%20Magic.ipynb
# mv Octave%20Magic.ipynb   ...?

##  THIS SHOULD BE DONE FROM JupyterHub admin's command line!!!
## How to do this from vagrant machine command line?

# install kernel for octave
pip install octave_kernel -y # 
pip install jupyterlab       # now jupyterlab is available at address/user/lab
# what should I do to have it openning by default ?


# https://tljh.jupyter.org/en/latest/troubleshooting/restart.html
# sudo tljh-config reload proxy


