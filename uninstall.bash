#!/usr/bin/env sh
rm -rf ~/.vimrc ~/.vim ~/.gvimrc

if [ -d ~/.vim_backup ]; then
    echo "Found existing .vim_backup directory in your HOME directory."
    echo "Move it to ~/.vim."
    mv ~/.vim_backup ~/.vim
fi

if [ -f ~/.vimrc_backup ]; then
    echo "Found existing .vimrc_backup file in your HOME directory."
    echo "Move it to ~/.vimrc."
    mv ~/.vimrc_backup ~/.vimrc
fi

if [ -f ~/.gvimrc_backup ]; then
    echo "Found existing .gvimrc_backup file in your HOME directory."
    echo "Move it to ~/.gvimrc."
    mv ~/.gvimrc_backup ~/.gvimrc
fi

rm -rf ~/.bashrc ~/.bash_profile ~/.bash_it

if [ -f ~/.bash_profile_backup ]; then
    echo "Found existing .bash_profile_backup file in your HOME directory."
    echo "Move it to ~/.bash_profile."
    mv ~/.bash_profile_backup ~/.bash_profile
fi

if [ -f ~/.bashrc_backup ]; then
    echo "Found existing .bashrc_backup file in your HOME directory."
    echo "Move it to ~/.bashrc."
    mv ~/.bashrc_backup ~/.bashrc
fi

rm ~/.tmux.conf

if [ -d ~/.marks_backup ]; then
    echo "Found existing .marks_backup directory in your HOME directory."
    echo "Move it to ~/.marks"
    mv ~/.marks_backup ~/.marks
else
    mkdir ~/.marks
fi

if [ -f ~/.tmux.conf_backup ]; then
    echo "Found existing .tmux.conf_backup file in your HOME directory."
    echo "Move it to ~/.tmux.conf."
    mv ~/.tmux.conf_backup ~/.tmux.conf
fi

if [ -f ~/.local.bash ]; then
    echo "Found existing ~/.local.bash file in your HOME directory."
    echo "Delete it."
    rm ~/.local.bash
fi

if [ -d ~/.gohome ]; then
    echo "Found existing ~/.gohome dir in your HOME directory."
    echo "Delete it."
    rm -rf ~/.local.bash
fi

rm -rf ~/.dotfiles

echo "Uninstalled successfully."
