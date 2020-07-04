#!/bin/bash
HOME=$(eval echo ~${SUDO_USER})
cp -r .icons ${HOME}
sudo ./.icons/Tela-icon-theme/install.sh
