#!/usr/bin/env sh

#Run this script will install the dotfiles.

#Clone the dotfiles from github.
git clone git@github.com:Winiex/dotfiles.git ~/.dotfiles

#Install vim configurations.
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/vim/ ~/.vim
