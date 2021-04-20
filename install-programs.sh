#!/usr/bin/bash

# This will install all my other programs

read -p "Once you have ensured multilib is enabled in '/etc/pacman.conf' and press enter"

ARCH_PACKAGES=""

# Just so I can keep track of what packages are what, I'll add them incrementally here

# Basic programming packages and libraries
ARCH_PACKAGES+="gcc
python
python-pip
wget
curl
jdk-openjdk
jre-openjdk
jre-openjdk-headless
nodejs
npm
"

# Fonts, languages, etc.
ARCH_PACKAGES+="fcitx-im
fcitx-mozc
fcitx-configtool
adobe-source-han-sans-jp-fonts
adobe-source-han-sans-kr-fonts
ttf-liberation
wqy-zenhei
noto-fonts-emoji
"

# Audio/Visual
ARCH_PACKAGES+="ffmpeg
youtube-dl
blender
gimp
inkscape
mkvtoolnix-cli
audacity
vlc
cmus
xf86-video-intel
mesa
lib32-mesa
pavucontrol
redshift
scrot
"

# Archives/File stuff
ARCH_PACKAGES+="ark
p7zip
tree
unzip
zip
"

# Internet/browser stuff
ARCH_PACKAGES+="discord
qbittorrent
steam
tor
torbrowser-launcher
vivaldi"

echo "$ARCH_PACKAGES"

doas -- pacman -Syu $ARCH_PACKAGES
