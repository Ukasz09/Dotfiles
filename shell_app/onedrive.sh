#!/bin/bash

readonly USERNAME=ukasz09 # because normal $USERNAME and ~ dont work in script 
readonly SYNC_DIR=/home/$USERNAME/Dokumenty/OneDrive-PWr

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
mkdir -p /home/$USERNAME/.config/onedrive
cp ./config /home/$USERNAME/.config/onedrive/config
cat /dev/null > /home/$USERNAME/.config/onedrive/config
echo "sync_dir = \"$SYNC_DIR\"" > /home/$USERNAME/.config/onedrive/config
echo "skip_file = \".*|~*\"" > /home/$USERNAME/.config/onedrive/config
