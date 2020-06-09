#!/bin/bash

HOME=$(eval echo ~${SUDO_USER})
SHORTCUTS_DIR=${HOME}/shortcuts

make_shortcuts_dir() {
    if [ ! -d "${SHORTCUTS_DIR}" ]; then
        mkdir ${SHORTCUTS_DIR}
        echo "Making shourtcuts dir"
    fi
}

copying_shortcuts() {
    cd ./.desktop/
    cp *.sh ${SHORTCUTS_DIR}
    cp *.desktop /usr/share/applications
    echo "Copying shourtcuts"
}

make_shortcuts_dir
copying_shortcuts
