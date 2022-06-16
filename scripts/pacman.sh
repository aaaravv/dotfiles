#!/bin/bash

# Requires sudo
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

echo -e "\n======> Installing Official Packages\n"

yes | pacman -Sy --noconfirm --needed $(<packages.txt)
