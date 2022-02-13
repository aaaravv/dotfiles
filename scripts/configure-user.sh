#!/bin/bash

if [ "$EUID" -eq 0 ]
then echo "Do not run as root"
    exit
fi

echo "======> Copying config files to respective dir..."
echo

mkdir -p ${HOME}/.config
mkdir -p ${HOME}/.vim

cp -frv \
../.vim \
../.vimrc \
../.zshrc \
${HOME}/

cp -frv \
../gtk-3.0 \
../micro \
../neofetch \
../sxiv \
../spicetify \
../starship.toml \
${HOME}/.config/


echo -e "\n======> Switching default shell to ZSH."
user=whoami
chsh -s /bin/zsh $user
zsh

echo -e "\n======> Installing Paradise Theme."
mkdir -p $HOME/.themes
cd .themes
git clone https://github.com/Manas140/paradise.git && cd paradise
./install.sh -d

echo -e "\n======> Installing Inter Nerd lfont"

mkdir -p $HOME/.local/share/fonts
git clone https://github.com/ayush-rathore/inter-nerd-font $HOME/.local/share/fonts/


echo -e "\n======> Installing Vim-Plugins"
if [ ! -e ${HOME}/.vim/autoload/plug.vim ]; then
    curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


echo -e "\n======> Installing ZSH-Plugins"
mkdir -p $HOME/.config/zsh/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.config/zsh/plugins/zsh-auto
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.config/zsh/plugins/fsh
git clone https://github.com/rupa/z.git ${HOME}/.config/zsh/plugins/z

mkdir -p ${HOME}/temp && cd ${HOME}/temp

git init
git remote add -f origin https://github.com/ohmyzsh/ohmyzsh.git
git sparse-checkout init
git sparse-checkout set "plugins/bgnotify" "plugins/sudo"
git pull origin master
cp -frv plugins/* ${HOME}/.config/zsh/plugins
rm -rf ${HOME}/temp
