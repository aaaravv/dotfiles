# Sync dotfiles with git repo

cp -rv ${HOME}/.config/cmus ../.config/
cp -rv ${HOME}/.config/feh ../.config/
cp -rv ${HOME}/.config/gtk-3.0/* ../.config/gtk-3.0/
cp -rv ${HOME}/.config/btop/* ../.config/btop/
cp -rv ${HOME}/.config/git/ ../.config/
cp -rv ${HOME}/.local/share/gvfs-metadata/home ../
cp -rv ${HOME}/.user-dirs.dirs ../
cp -rv ${HOME}/.config/micro/* ../.config/micro/
cp -rv ${HOME}/.config/fontconfig/* ../.config/fontconfig/
cp -rv ${HOME}/.config/neofetch/* ../.config/neofetch/
cp -rv ${HOME}/.config/spicetify/config-xpui.ini ../.config/spicetify
cp -rv ${HOME}/.config/starship.toml ../.config/
cp -rv ${HOME}/.config/zathura ../.config/
cp -rv ${HOME}/.config/zsh/ ../.config/
cp -rv ${HOME}/.zshenv ../
cp -frv \
    ${HOME}/.config/alacritty \
    ${HOME}/.config/dunst \
    ${HOME}/.config/sway \
    ${HOME}/.config/gtklock \
    ${HOME}/.config/waybar \
    ${HOME}/.config/wofi \
    ../.config/

cp -rv /etc/pacman.conf ../scripts/system-configs/
cp -rv /etc/bluetooth/main.conf ../scripts/system-configs/
cp -rv /etc/pacman.d/mirrorlist ../scripts/system-configs/
cp -rv /etc/vsftpd ../scripts/system-configs/
cp -rv /boot/loader/loader.conf ../scripts/system-configs/
