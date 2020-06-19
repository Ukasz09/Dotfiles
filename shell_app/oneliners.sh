#!/bin/bash

install_advanced_touch(){
    # https://github.com/tanrax/terminal-AdvancedNewFile
    pip3 install advance-touch
}

install_yt(){
    pip install --upgrade youtube_dl
}

install_silver_search(){
    # https://github.com/ggreer/the_silver_searcher
    apt install silversearcher-ag
}

install_fd_find(){
    # https://github.com/sharkdp/fd
    apt install fd-find
}

install_bash_git_status(){
    # https://github.com/romkatv/gitstatus
    git clone --depth=1 https://github.com/romkatv/gitstatus.git ~/gitstatus
    echo 'source ~/gitstatus/gitstatus.prompt.sh' >> /home/ukasz09/Dokumenty/Dev/GitHub/Dotfiles/aliases/.bash_aliases
}

# ------------------------------------------------------------------- #
install_advanced_touch
install_yt
install_silver_search
install_bash_git_status

