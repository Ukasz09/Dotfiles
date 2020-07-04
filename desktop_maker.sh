#!/bin/bash

HOME=$(eval echo ~${SUDO_USER})

copying_shortcuts() {
    cd ./.desktop/
    cp *.desktop /usr/share/applications
    echo "Correct copied shortcuts"
}

copying_shortcuts
