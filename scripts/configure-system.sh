#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

# disable annoying beep
set bell-style none
sudo rmmod pcspkr

# running commands to configure the system
systemctl enable NetworkManager

# Bluetooth config
cp -fv /sys-configs/main.conf /etc/bluetooth/

# Set time-date
timedatectl set-timezone 'Asia/Kolkata'
timedatectl set-ntp true

# Pacman config
cp -fv /sys-configs/pacman.conf /etc/
cp -fv /sys-configs/mirrorlist /etc/pacman.d/

mkinitcpio -p linux

localectl set-locale LANG=en_US.UTF-8

echo -e "\n======> Switching default shell to ZSH."
user=whoami
chsh -s /bin/zsh $user
zsh