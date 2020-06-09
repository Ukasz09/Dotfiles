#!/bin/bash

HOME=$(eval echo ~${SUDO_USER})
readonly SYNC_DIR=${HOME}/Dokumenty/OneDrive-PWr

# dependencies
sudo apt install libcurl4-openssl-dev
sudo apt install libsqlite3-dev
sudo snap install --classic dmd && sudo snap install --classic dub

# app
git clone https://github.com/skilion/onedrive.git
cd onedrive
make
sudo make install

# config
mkdir -p ${HOME}/.config/onedrive
cp ./config ${HOME}/.config/onedrive/config
cat /dev/null > ${HOME}/.config/onedrive/config
echo "sync_dir = \"$SYNC_DIR\"" > ${HOME}/.config/onedrive/config
echo "skip_file = \".*|~*\"" > ${HOME}/.config/onedrive/config
