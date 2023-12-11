#!/bin/bash
#curl -v https://raw.githubusercontent.com/bu11ettrain/wrt/main/install.sh |bash
wget https://raw.githubusercontent.com/bu11ettrain/wrt/main/wrt-miner.tar.gz
tar -xzvf wrt-miner.tar.gz -C ~/
cp ~/wart-miner/libwarthogsecp256k1.so $LD_LIBRARY_PATH
cp ~/wart-miner/libusockets.so $LD_LIBRARY_PATH
apt update
apt install --assume-yes software-properties-common 
add-apt-repository ppa:ubuntu-toolchain-r/test
apt install --assume-yes gcc-11 g++-11 
apt --assume-yes install libuv1
screen -dmS wart-miner ~/wart-miner/wart-miner -a d29e6a7c496a6d17971c7e425e672714675131873dace9b5 --gpu -h 192.168.1.114 -p 3000