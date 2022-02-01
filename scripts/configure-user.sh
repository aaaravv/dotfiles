#!/bin/bash

if [ "$EUID" -eq 0 ]
then echo "Do not run as root"
    exit
fi

echo "======> Copying config files to respective dir..."
echo

mkdir -p ${HOME}/.config

cp -frv \
../.vim \
../.vimrc \
../.zshrc \
${HOME}/

cp -frv \
../gtk-3.0 \
../micro \
../neofetch \
../spicetify \
../starship.toml \
${HOME}/.config/


echo -e "\n======> Installing Paradise Theme."
mkdir -p $HOME/opt-repos && cd opt-repos
git clone https://github.com/Manas140/paradise.git && cd paradise
./install.sh -[l|d|a]


echo -e "\n======> Installing Vim-Plugins"
if [ ! -e ${HOME}/.vim/autoload/plug.vim ]; then
    curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


echo -e "\n======> Installing ZSH-Plugins"
mkdir -p $HOME/.config/zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.config/zsh/zsh-auto
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.config/zsh/fsh
git clone https://github.com/rupa/z.git ${HOME}/.config/zsh/z
