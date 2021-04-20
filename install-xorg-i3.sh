#!/usr/bin/bash

# Install all the basic display stuff, along with creating all the symlinks.
# After that, reboot and launch i3, then run install-programs.sh

CONFIRM_MESSAGE="
Before continuing, make sure you've run pacstrap with the following packages:
	- linux
	- linux-firmware
	- base
	- vim
	- doas
	- git
Press enter to confirm
"

read -p "$CONFIRM_MESSAGE"

echo "Installing xorg and i3..."
echo "
================IMPORTANT=================
Make sure you install the default packages
for xorg, and all except for 'i3wm' for i3
=========================================="
doas -- pacman -Syu xorg xorg-xinit i3

echo "
Finished installing xorg and i3.
Running link script...
"

./scripts/create-links.sh

echo "
Finished basic install script.
Reboot, sign in to tty1 and and run 'install-programs.sh'
"
