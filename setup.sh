#!/bin/bash


cd $HOME

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir -p ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -s ~/dotfiles/.zshrc ~/.zshrc 
ln -s ~/dotfiles/.vimrc ~/.vimrc

