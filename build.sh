#!/bin/bash
rm -f enet-pyspades.pyx
rm -f enet
rm -f enet-1.3.3

cp enet.pyx enet-pyspades.pyx
git apply pyspades-pyenet.patch

# If this link dies use https://github.com/lsalzman/enet/tree/ee869ab08ade3dae6a6c5ffb0ef1ed1c61d1a709
wget http://enet.bespin.org/download/enet-1.3.3.tar.gz


tar -xzvf enet-1.3.3.tar.gz
ln -s enet enet-1.3.3

git apply pyspades-enet.patch