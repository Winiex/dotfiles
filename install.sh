#!/usr/bin/env sh

#Run this script will install the dotfiles.

#Clone the dotfiles from github.
git clone git@github.com:Winiex/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

#Install vim configurations.

git submodule init
git submodule update

ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/vim/ ~/.vim
