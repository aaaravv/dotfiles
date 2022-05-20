# Sync dotfiles with git repo

cp -rv ${HOME}/.config/cmus ../.config/
cp -rv ${HOME}/.config/feh ../.config/
cp -rv ${HOME}/.config/gtk-3.0/* ../.config/gtk-3.0/
cp -rv ${HOME}/.config/htop/* ../.config/htop/
cp -rv ${HOME}/.config/btop/* ../.config/htop/
cp -rv ${HOME}/.config/micro/* ../.config/micro/
cp -rv ${HOME}/.config/fontconfig/* ../.config/fontconfig/
cp -rv ${HOME}/.config/neofetch/* ../.config/neofetch/
cp -rv ${HOME}/.config/spicetify/config-xpui.ini ../.config/spicetify
cp -rv ${HOME}/.config/starship.toml ../.config/
cp -rv ${HOME}/.config/sxiv/ ../.config/
cp -rv ${HOME}/.config/zsh/ ../.config/
cp -rv ${HOME}/.zshenv ../

cp -rv /etc/pacman.conf ../scripts/sys-configs/
cp -rv /etc/bluetooth/main.conf ../scripts/sys-configs/
cp -rv /etc/pacman.d/mirrorlist ../scripts/sys-configs/
