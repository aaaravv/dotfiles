#!/bin/bash

echo -e "\n======> Installing Yay\n"

cd ${HOME}
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si --no-confirm

echo -e "\n======> Installing AUR Packages...\n"

yay -Y --devel --combinedupgrade --batchinstall --save
yay -S \
	7-zip-bin \
	google-chrome \
	llama \
	nerd-fonts-jetbrains-mono \
	ponymix \
	rtl8821au-dkms-git \
	shell-color-scripts \
	spicetify-cli \
	spotify \
	spotify-adblock \
	ttf-font-logos \
	visual-studio-code-bin

echo -e "\n======> Completed Installing AUR Packages!\n"
