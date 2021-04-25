#!/usr/bin/bash
echo "Creating Links..."
echo "Creating i3 config link"
ln -sf ~/github/dotfiles/configs/i3-config ~/.config/i3/config

echo "Creating dunst config..."
ln -sf ~/github/dotfiles/configs/dunstrc ~/.config/dunst/dunstrc

echo "Creating CMUS config..."
ln -sf ~/github/dotfiles/configs/cmus-config ~/.config/cmus/autosave

echo "Creating vim config..."
ln -sf ~/github/dotfiles/configs/vimrc ~/.vimrc

echo "Creating bash_profile"
ln -sf ~/github/dotfiles/configs/bash_profile ~/.bash_profile

echo "Creating bashrc"
ln -sf ~/github/dotfiles/configs/bashrc ~/.bashrc

echo "Creating gitconfig"
ln -sf ~/github/dotfiles/configs/gitconfig ~/.gitconfig

echo "Creating xinitrc"
ln -sf ~/github/dotfiles/configs/xinitrc ~/.xinitrc

echo "Done!"
