#!/usr/bin/env sh

#Run this script will install the dotfiles.

#Clone the dotfiles from github.
#Use this childish ASCII art to make it rock a little bit.
echo "#######################################"
echo "#  Now clone dotfiles into .dotfiles  #"
echo "#######################################\n"

git clone git@github.com:Winiex/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

#Install vim configurations.
echo "#######################################"
echo "#  Now install vim configurations     #"
echo "#######################################\n"

git submodule init
git submodule update

ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/vim/ ~/.vim
