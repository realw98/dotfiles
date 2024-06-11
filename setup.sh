#!/usr/local/bin/bash


cd $HOME

git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

mkdir -p ~/.vim/autoload/
cd ~/.vim/autoload/
wget -O plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd ~
mkdir -p ~/.tmux/plugins
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cd ~
mkdir -p ~/.config/nvim
git clone --depth=1 https://github.com/NvChad/starter ~/.config/nvim

ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/hypr ~/.config/hypr
ln -s ~/dotfiles/dunst ~/.config/dunst
ln -s ~/dotfiles/waybar ~/.config/waybar

mkdir -p ~/.config/tmux
ln -s ~/dotfiles/.tmux.conf ~/.config/tmux/tmux.conf
mv ~/.bashrc ~/.bashrc.orig
ln -s ~/dotfiles/.bashrc ~/.bashrc
mv ~/.bash_profile ~/.bash_profile.orig
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
