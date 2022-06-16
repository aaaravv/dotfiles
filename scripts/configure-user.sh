#!/bin/bash

if [ "$EUID" -eq 0 ]
then echo "Do not run as root"
    exit
fi

echo "======> Copying config files to respective dir..."
echo

mkdir -p ${HOME}/.config

cp -frv ../.config/ \
${HOME}/

mkdir -p ${HOME}/temp && cd temp
git clone https://github.com/Aarav619/Sway-On-Arch.git && cd Sway-On-Arch
make install
rm -rf ${HOME}/temp

echo -e "\n======> Switching default shell to ZSH."
user=whoami
chsh -s /bin/zsh $user
zsh

echo -e "\n======> Installing Paradise Theme."
mkdir -p $HOME/.local/share/themes && cd $HOME/.local/share/themes
git clone https://github.com/Manas140/paradise.git && cd paradise
./install.sh -d

echo -e "\n======> Installing Inter Nerd font"

mkdir -p $HOME/.local/share/fonts
git clone https://github.com/ayush-rathore/inter-nerd-font $HOME/.local/share/fonts/

echo -e "\n======> Installing ZSH-Plugins"
mkdir -p $HOME/.config/zsh/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.config/zsh/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.config/zsh/plugins/
git clone https://github.com/wfxr/forgit.git ${HOME}/.config/zsh/plugins/
git clone https://github.com/Aloxaf/fzf-tab.git ${HOME}/.config/zsh/plugins/

mkdir -p ${HOME}/temp && cd ${HOME}/temp

git init
git remote add -f origin https://github.com/ohmyzsh/ohmyzsh.git
git sparse-checkout init
git sparse-checkout set "plugins/bgnotify" "plugins/sudo"
git pull origin master
cp -frv plugins/* ${HOME}/.config/zsh/plugins
rm -rf ${HOME}/temp
