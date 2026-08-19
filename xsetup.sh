#!/usr/bin/env sh


ln -s ~/dotfiles/.Xresources ~/.Xresources

mkdir -p ~/.config/icewm
ln -s ~/dotfiles/icewm/keys ~/.config/icewm/keys
ln -s ~/dotfiles/icewm/preferences ~/.config/icewm/preferences
ln -s ~/dotfiles/icewm/startup ~/.config/icewm/startup

