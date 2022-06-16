#!/bin/bash

echo -e "\n======> Installing Yay\n"

cd ${HOME}
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si --no-confirm

echo -e "\n======> Installing AUR Packages...\n"

yay -Y --devel --combinedupgrade --batchinstall --nodiffmenu --save
yay -S \
	nerd-fonts-jetbrains-mono \
	ponymix \
	spicetify-cli \
	ttf-font-logos \
	ttf-icomoon-feather \
	googlekeep-bin \
	postman-bin \
	spotiflyer-bin \
	ttf-material-design-icons-git \
	ttf-material-design-icons \
	visual-studio-code-bin \

echo -e "\n======> Completed Installing AUR Packages!\n"
