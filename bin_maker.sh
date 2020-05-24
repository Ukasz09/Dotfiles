#!/bin/bash

make_yt_dir() {
    if [! -d "~/Wideo/YouTube" ]; then
        mkdir ~/Wideo/YouTube
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
