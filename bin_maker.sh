#!/bin/bash

readonly USERNAME=ukasz09 # because normal $USERNAME and ~ dont work in script 

make_yt_dir() {
    if [ ! -d "/home/$USERNAME/Wideo/YouTube" ]; then
        mkdir /home/$USERNAME/Wideo/YouTube
        echo "Making yt dir"
    fi
}

# -------------------------------------------------------------------------------------------------------------------- #
copy_bin() {
    cd ./bin
    cp -i * /usr/bin/
}

make_yt_dir
copy_bin
