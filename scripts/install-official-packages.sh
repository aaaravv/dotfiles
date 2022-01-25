#!/bin/bash

# Requires sudo
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

echo -e "\n======> Installing Official Packages\n"

# --noconfirm is used to select all packages from groups
pacman -Sy --needed $(<pkg/official-packages.txt)
