#!/bin/bash


cd $HOME

git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir -p ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -s ~/dotfiles/.zshrc ~/.zshrc 
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.config/tmux/tmux.conf
cp ~/.bashrc ~/.bashrc.orig
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
