#!/bin/sh

MAKEOPTS="-j2"

#echo -n "Downloading ode-0.12..." &&
#wget https://sourceforge.net/projects/opende/files/ODE/0.12/ode-0.12.tar.bz2 > /tmp/odewget 2>&1 &&
#echo "done" &&

echo -n "Changing into simulator"
cd ./pyrosim/simulator

mkdir -p ./tmp

./configure --enable-double-precision 
make $MAKEOPTS 
make install 
cd .. 
echo "done" 

echo -n "Building simulator..." 
make $MAKEOPTS
echo "done"