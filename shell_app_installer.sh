#!/bin/bash
HOME=$(eval echo ~${SUDO_USER})

install_one_drive(){
    # https://github.com/skilion/onedrive
    readonly SYNC_DIR=${HOME}/Dokumenty/OneDrive-PWr
    
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
    mkdir -p ${HOME}/.config/onedrive
    cp ./config ${HOME}/.config/onedrive/config
    cat /dev/null > ${HOME}/.config/onedrive/config
    echo "sync_dir = \"$SYNC_DIR\"" > ${HOME}/.config/onedrive/config
    echo "skip_file = \".*|~*\"" > ${HOME}/.config/onedrive/config
}

# ad command
install_advanced_touch(){
    # https://github.com/tanrax/terminal-AdvancedNewFile
    pip3 install advance-touch
}

install_yt(){
    pip install --upgrade youtube_dl
}

# ag command
install_silver_search(){
    # https://github.com/ggreer/the_silver_searcher
    apt install silversearcher-ag
}

# fdfind command
install_fd_find(){
    # https://github.com/sharkdp/fd
    apt install fd-find
}

install_bash_git_status(){
    # https://github.com/romkatv/gitstatus
    git clone --depth=1 https://github.com/romkatv/gitstatus.git "${HOME}/gitstatus"
    echo 'source ~/gitstatus/gitstatus.prompt.sh' >> "${HOME}/Dokumenty/Dev/GitHub/Dotfiles/aliases/.bash_aliases"
}

# shellcheck command
install_shellcheck(){
    # https://github.com/koalaman/shellcheck
    sudo apt install shellcheck
}

# goto command
install_goto(){
    # https://github.com/iridakos/goto
    git clone https://github.com/iridakos/goto.git
    cd goto
    sudo ./install
    cd -
    rm -r ./goto
}

# ------------------------------------------------------------------- #
install_one_drive
install_advanced_touch
install_yt
install_silver_search
install_bash_git_status
install_shellcheck
install_goto
