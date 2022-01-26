#!/bin/bash

if [ "$EUID" -eq 0 ]
then echo "Do not run as root"
    exit
fi

echo "======> Copying config files to respective dir..."
echo

mkdir -p ${HOME}/.config

cp -frv \
../.themes \
../.vim \
../.vimrc \
../.zshrc \
${HOME}/

cp -frv \
../gtk-3.0 \
../micro \
../spicetify \
../starship.toml \
${HOME}/.config/


echo -e "\n======> Installing Vim-Plugins"
if [ ! -e ${HOME}/.vim/autoload/plug.vim ]; then
    curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo -e "\n======> Installing ZSH-Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/.config/zsh/zsh-auto
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ${HOME}/.config/zsh/fsh