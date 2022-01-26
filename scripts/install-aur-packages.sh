#!/bin/bash

echo -e "\n======> Installing Yay\n"

cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si --no-confirm

echo -e "\n======> Installing AUR Packages\n"

yay -S $(<pkg/aur-packages.txt)

echo -e "\n======> Installing oh-my-zsh\n"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
