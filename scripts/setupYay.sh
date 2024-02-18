#!/bin/bash

# Author: Kalos Lazo
# Github: @kaloslazo

# =>> Update system & make needed folders
sudo pacman -Syu

mkdir /tmp/yay
cd /tmp/yay

# =>> Install yay from aur
curl -Oj 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
makepkg -si

cd
rm -rf /tmp/yay
yay --version
