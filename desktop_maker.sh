#!/bin/bash

readonly USERNAME=ukasz09 # because normal $USERNAME and ~ dont work in script 
readonly SHORTCUTS_DIR=/home/$USERNAME/shortcuts

make_shortcuts_dir() {
    if [ ! -d "$SHORTCUTS_DIR" ]; then
        mkdir $SHORTCUTS_DIR
        echo "Making shourtcuts dir"
    fi
}

copying_shortcuts() {
    cd ./.desktop/
    cp *.sh $SHORTCUTS_DIR
    cp *.desktop /usr/share/applications
    echo "Copying shourtcuts"
}

make_shortcuts_dir
copying_shortcuts
