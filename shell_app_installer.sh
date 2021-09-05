#!/bin/bash
HOME=$(eval echo ~${SUDO_USER})

install_one_drive(){
    # https://github.com/skilion/onedrive
    readonly SYNC_DIR=${HOME}/Documents/OneDrive-PWr

    # dependencies
    sudo apt-get install libcurl4-openssl-dev
    sudo apt-get install libsqlite3-dev
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
    sudo pip3 install advance-touch
}

install_yt(){
    sudo pip install --upgrade youtube_dl
}

# ag command
install_silver_search(){
    # https://github.com/ggreer/the_silver_searcher
    sudo apt-get install silversearcher-ag
}

# fdfind command
install_fd_find(){
    # https://github.com/sharkdp/fd
    sudo apt-get install fd-find
}

install_bash_git_status(){
    # https://github.com/romkatv/gitstatus
    git clone --depth=1 https://github.com/romkatv/gitstatus.git "${HOME}/gitstatus"
    echo 'source ~/gitstatus/gitstatus.prompt.sh' >> "${HOME}/.bash_aliases"
}

# shellcheck command
install_shellcheck(){
    # https://github.com/koalaman/shellcheck
    sudo apt-get install shellcheck
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

install_snap(){
sudo apt-get install snap
sudo apt-get install snapd
}

install_sdkman(){
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
}

install_sdk_langs(){
sdk install gradle
sdk install java
sdk install sbt
sdk install scala
sdk install springboot
}

install_tree(){
sudo snap install tree
}

install_speed_test(){
# https://github.com/sindresorhus/speed-test
sudo npm install --global speed-test
}

install_neofetch(){
sudo apt install neofetch
}

install_trash(){
sudo npm install --global trash-cli
}

install_stacer(){
  sudo add-apt-repository ppa:oguzhaninan/stacer
  sudo apt install stacer
}

install_other_langs(){
sudo apt-get install npm
sudo npm install -g @angular/cli
sudo apt-get install python
sudo apt-get install nodejs
sudo apt-get install python3-pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
}

install_htop(){
sudo apt install htop
}

install_postman(){
sudo snap install postman
}

install_code_lines_counter(){
        git clone https://github.com/Ukasz09/Code-lines-counter.git
        cd Code-lines-counter/
        make install
        cd ..
        rm -r Code-lines-counter/
}

install_others(){
sudo apt-get install blueman
sudo npm install --global yarn
}

# ------------------------------------------------------------------- #
install_sdkman
install_sdk_langs
install_other_langs
install_snap
install_one_drive
install_advanced_touch
install_fd_find
install_yt
install_silver_search
install_bash_git_status
install_shellcheck
install_goto
install_tree
install_neofetch
install_speed_test
install_htop
install_code_lines_counter
install_postman
install_stacer
install_others
