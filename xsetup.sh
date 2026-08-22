#!/usr/bin/env sh

ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -sT ~/dotfiles/dunst ~/.config/dunst
ln -sT ~/dotfiles/hypr ~/.config/hypr
ln -sT ~/dotfiles/waybar ~/.config/waybar
ln -sT ~/dotfiles/mako ~/.config/mako
ln -sT ~/dotfiles/niri ~/.config/niri
mkdir -p ~/.config/icewm
ln -s ~/dotfiles/icewm/keys ~/.config/icewm/keys
ln -s ~/dotfiles/icewm/preferences ~/.config/icewm/preferences
ln -s ~/dotfiles/icewm/startup ~/.config/icewm/startup
ln -s ~/dotfiles/icevolume ~/.local/bin/icevolume
