#!/bin/bash

LIB_VERSION=1.3.3

rm -f enet-pyspades.pyx
rm -f enet
rm -f enet.so
rm -f "enet-${LIB_NAME}.tar.gz"
rm -rf "enet-${LIB_NAME}"

cp enet.pyx enet-pyspades.pyx
git apply pyspades-pyenet.patch

# If it dies, use "https://github.com/noway421/enet/archive/${LIB_NAME}.tar.gz"
# But really only https://github.com/noway421/enet/archive/1.3.3.tar.gz exists
# No other version are supported in pyspades. If their website goes down no
# other versions are fetchable. If you'd like to port to another version and
# bespin.org is dead, take a look at https://github.com/lsalzman/enet, although
# their releases are not correspondent to .tar.gz releases on enet.bespin.org
wget "http://enet.bespin.org/download/enet-${LIB_NAME}.tar.gz"

tar -xzvf "enet-${LIB_NAME}.tar.gz"
ln -s "enet-${LIB_NAME}" enet

