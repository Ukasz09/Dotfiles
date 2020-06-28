#!/bin/bash

HOME=$(eval echo ~${SUDO_USER})
SHORTCUTS_DIR=${HOME}/shortcuts

copying_shortcuts() {
    mkdir -p ${SHORTCUTS_DIR}
    cd ./.desktop/
    cp *.sh ${SHORTCUTS_DIR}
    cp *.desktop /usr/share/applications
    echo "Correct copied shortcuts"
}

copying_shortcuts
