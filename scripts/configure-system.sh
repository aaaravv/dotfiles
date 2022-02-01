#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

# running commands to configure the system
systemctl enable NetworkManager
cp /sys-configs/main.conf /etc/bluetooth/

# Set time-date
timedatectl set-timezone 'Asia/Kolkata'
timedatectl set-ntp true

# Pacman config
cp /sys-configs/pacman.conf /etc/

mkinitcpio -p linux

localectl set-locale LANG=en_US.UTF-8
