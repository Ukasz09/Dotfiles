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
    #https://github.com/sharkdp/fd
    apt install fd-find
}

# ------------------------------------------------------------------- #
install_advanced_touch
install_yt
install_silver_search