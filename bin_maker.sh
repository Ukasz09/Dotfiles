#!/bin/bash
HOME=$(eval echo ~${SUDO_USER})
YT_DIR=${HOME}/Wideo/YouTube
WEB_DIR=${HOME}/Dokumenty/Websites

# -------------------------------------------------------------------------------------------------------------------- #
make_yt_dir() {
    if [ ! -d "${YT_DIR}" ]; then
        mkdir ${YT_DIR}
        echo "Making YouTube dir"
    fi
}

make_websites_dir() {
    if [ ! -d "${WEB_DIR}" ]; then
        mkdir ${WEB_DIR}
        echo "Making Websites dir"
    fi
}

# -------------------------------------------------------------------------------------------------------------------- #
copy_bin() {
    cd ./bin
    cp * /usr/bin/
}

make_websites_dir
make_yt_dir
copy_bin
