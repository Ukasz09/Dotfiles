#!/bin/bash
HOME=$(eval echo ~${SUDO_USER})
WEB_DIR="${HOME}/Dokumenty/Websites"
YT_DIR="${HOME}/Wideo/YouTube"

# -------------------------------------------------------------------------------------------------------------------- #
make_directories(){
    mkdir -p "${YT_DIR}"
    mkdir -p "${WEB_DIR}"
    echo "Directories made correctly"
}

copy_bin() {
    cd "./bin"
    cp * "/usr/local/bin/"
}

make_directories
copy_bin
