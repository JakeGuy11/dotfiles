#!/usr/bin/bash
echo "Creating Links..."
echo "Creating i3 config link"
ln -sf ~/github/dotfiles/configs/i3-config ~/.config/i3/config

echo "Creating dunst config..."
ln -sf ~/github/dotfiles/configs/dunstrc ~/.config/dunst/dunstrc

echo "Creating vim config..."
ln -sf ~/github/dotfiles/configs/vimrc ~/.vimrc

echo "Done!"
