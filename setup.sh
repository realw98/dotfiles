#!/usr/bin/env bash

cd $HOME

git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

mkdir -p ~/.vim/autoload/
wget -O ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/tmux
ln -s ~/dotfiles/.tmux.conf ~/.config/tmux/tmux.conf
mkdir -p ~/.tmux/plugins
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone --depth=1 https://github.com/adi1090x/termux-style
cd termux-style
./install

cd $HOME

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.zshrc ~/.zshrc

mv ~/.bashrc ~/.bashrc.orig
ln -s ~/dotfiles/.bashrc ~/.bashrc

mv ~/.bash_profile ~/.bash_profile.orig
ln -s ~/dotfiles/.bash_profile ~/.bash_profile

