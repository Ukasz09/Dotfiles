#!/bin/bash
HOME=$(eval echo ~${SUDO_USER})
cp -r .icons ${HOME}
git clone https://github.com/vinceliuice/Tela-icon-theme.git
cd Tela-icon-theme
sudo ./Tela-icon-theme/install.sh -a
cd ..
rm -r ./Tela-icon-theme
