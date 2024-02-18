#!/bin/bash

# Author: Kalos Lazo
# Github: @kaloslazo

# =>> Install initial packages
sudo pacman -S bluez bluez-utils blueman pulseaudio pulseaudio-bluetooth 
sudo pacman -S blueberry pavucontrol

# =>> Enable services
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service