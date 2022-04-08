#!/bin/bash

echo -e "\n======> Installing Yay\n"

cd ${HOME}
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si --no-confirm

echo -e "\n======> Installing AUR Packages...\n"

yay -Y --devel --combinedupgrade --batchinstall --nodiffmenu --save
yay -S \
	autotiling-rs.git \
	7-zip-bin \
	nerd-fonts-jetbrains-mono \
	ponymix \
	spicetify-cli \
	spotify \
	spotify-adblock \
	ttf-font-logos \
	ttf-material-design-icons \
	visual-studio-code-bin

echo -e "\n======> Completed Installing AUR Packages!\n"
