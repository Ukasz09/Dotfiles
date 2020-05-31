#!/bin/bash

readonly USERNAME=ukasz09 # because normal $USERNAME and ~ dont work in script 

make_yt_dir() {
    if [ ! -d "/home/$USERNAME/Wideo/YouTube" ]; then
        mkdir /home/$USERNAME/Wideo/YouTube
        echo "Making YouTube/ dir"
    fi
}

make_websites_dir() {
    if [ ! -d "/home/$USERNAME/Dokumenty/Websites" ]; then
        mkdir /home/$USERNAME/Dokumenty/Websites
        echo "Making Websites/ dir"
    fi
}

 
# -------------------------------------------------------------------------------------------------------------------- #
copy_bin() {
    cd ./bin
    cp -i * /usr/bin/
}

make_websites_dir
make_yt_dir
copy_bin
