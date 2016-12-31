#!/bin/bash

LIB_NAME=enet-1.3.3

rm -f enet-pyspades.pyx
rm -f enet
rm -f enet.so
rm -f "${LIB_NAME}.tar.gz"
rm -rf "${LIB_NAME}"

cp enet.pyx enet-pyspades.pyx
git apply pyspades-pyenet.patch

# If this link dies use https://github.com/lsalzman/enet/tree/ee869ab08ade3dae6a6c5ffb0ef1ed1c61d1a709
wget "http://enet.bespin.org/download/${LIB_NAME}.tar.gz"

tar -xzvf "${LIB_NAME}.tar.gz"
ln -s "${LIB_NAME}" enet

git apply pyspades-enet.patch