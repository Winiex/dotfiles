#!/usr/bin/env sh

#Run this script will install the dotfiles.

#Check whether the ~/.dotfiles directory exists.
if [ -d ~/.dotfiles ]; then
    echo "~/.dotfiles directory exists. Exit."
    exit 1
fi

#Clone the dotfiles from github.
#Use this childish ASCII art to make it rock a little bit.
printf "\n"
echo "#######################################"
echo "#  Now download basic dotfiles        #"
echo "#######################################"
printf "\n"

git clone --recursive https://github.com/Winiex/dotfiles.git ~/.dotfiles

cd ~/.dotfiles

git remote set-url origin "git@github.com:Winiex/dotfiles.git"

echo "#######################################"
echo "# Basic dotfiles installed.           #"
echo "# Everything is under control.        #"
echo "#                -- By winiex         #"
echo "#######################################"

#Install vim configurations.
printf "\n"
echo "#######################################"
echo "#  Now install vim configurations     #"
echo "#######################################"
printf "\n"

if [ -d ~/.vim ]; then
    echo "Found existing .vim directory in your HOME directory."
    echo "Move it to ~/.vim_backup."
    mv ~/.vim ~/.vim_backup
fi

if [ -f ~/.vimrc ]; then
    echo "Found existing .vimrc file in your HOME directory."
    echo "Move it to ~/.vimrc_backup."
    mv ~/.vimrc ~/.vimrc_backup
fi

if [ -f ~/.gvimrc ]; then
    echo "Found existing .gvimrc file in your HOME directory."
    echo "Move it to ~/.gvimrc_backup."
    mv ~/.gvimrc ~/.gvimrc_backup
fi

ln -s ~/.dotfiles/vim/vimrc.vim ~/.vimrc
ln -s ~/.dotfiles/vim/gvimrc.vim ~/.gvimrc
ln -s ~/.dotfiles/vim/vim/ ~/.vim

echo "#######################################"
echo "# Vim configurations installed.       #"
echo "# Emacs is good, I choose vim.        #"
echo "#                -- By winiex         #"
echo "#######################################"

#Install bash configurations.
printf "\n"
echo "#######################################"
echo "#  Now install bash configurations    #"
echo "#######################################"
printf "\n"

if [ -f ~/.bash_profile ]; then
    echo "Found existing .bash_profile file in your HOME directory."
    echo "Move it to ~/.bash_profile_backup."
    mv ~/.bash_profile ~/.bash_profile_backup
fi

if [ -f ~/.bashrc ]; then
    echo "Found existing .bashrc file in your HOME directory."
    echo "Move it to ~/.bashrc_backup."
    mv ~/.bashrc ~/.bashrc_backup
fi

if ! [ -f ~/.local.bash ]; then
    echo "Create ~/.local.bash file where you can put your own bash configs."
    touch ~/.local.bash
fi

ln -s ~/.dotfiles/bash/bash_profile.sh ~/.bash_profile
ln -s ~/.dotfiles/bash/bashrc.sh ~/.bashrc
ln -s ~/.dotfiles/bash/bash-it ~/.bash_it

if ! [ -d ~/repository ]; then
    echo "~/repository directories not exists, create it."
    mkdir "~/repository"
    mkdir "~/repository/code"
    mkdir "~/repository/source"
    mkdir "~/repository/play"
else
    if ! [ -d ~/repository/code ]; then
        mkdir "~/repository/code"
    fi

    if ! [ -d ~/repository/play ]; then
        mkdir "~/repository/play"
    fi

    if ! [ -d ~/repository/source ]; then
        mkdir "~/repository/source"
    fi
fi

if [ -d ~/repository/code ]; then
    echo "Link ~/repository/code to ~/code."
    ln -s "~/repository/code" "~/code"
fi

if [ -d ~/repository/source ]; then
    echo "Link ~/repository/source to ~/source."
    ln -s "~/repository/source" "~/source"
fi

if [ -d ~/repository/play ]; then
    echo "Link ~/repository/play to ~/play."
    ln -s "~/repository/play" "~/play"
fi

if ! [ -d ~/.gohome ]; then
    echo "Create golang home dir."
    mkdir ~/.gohome
fi

echo "#######################################"
echo "# Bash configurations installed.      #"
echo "# Now your bash is your zsh.          #"
echo "#                -- By winiex         #"
echo "#######################################"

#Install tmux configurations.
printf "\n"
echo "#######################################"
echo "#  Now install tmux configurations    #"
echo "#######################################"
printf "\n"

if [ -f ~/.tmux.conf ]; then
    echo "Found existing .tmux.conf file in your HOME directory."
    echo "Move it to ~/.tmux.conf_backup."
    mv ~/.tmux.conf ~/.tmux.conf_backup
fi

ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

echo "#######################################"
echo "# Tmux configurations installed.      #"
echo "# I use tmux to split huge screens.   #"
echo "#                -- By winiex         #"
echo "#######################################"

#Install configurations of custom tools.
printf "\n"
echo "#######################################"
echo "#  Now install tools configurations   #"
echo "#######################################"
printf "\n"

if [ -d ~/.marks ]; then
    echo "Found existing .marks directory in your HOME directory."
    echo "Move it to ~/.marks_backup."
    mv ~/.marks ~/.marks_backup
fi

mkdir ~/.marks

echo "#######################################"
echo "# Real man has his own tools.         #"
echo "#                -- By winiex         #"
echo "#######################################"

printf "\n"
echo "#######################################"
echo "# Dotfiles installed successfully.    #"
echo "# My dotfiles will find you.          #"
echo "#                -- By winiex         #"
echo "#######################################"
printf "\n"

echo "                       ▗▄▄▄▄▄▄▄▟▄▄▄▄▄▄"
echo "                     ▐██████████████████▙▄▄"
echo "                     ███████████████████████▄"
echo "                    ▐████████████████████████▌"
echo "                    ██████████████████████████"
echo "                   ▐██████████████████████████▌"
echo "                   ███████████████████████████▌"
echo "                  ▗███████████████████████████▀"
echo "                  ▟███████████████████████████████████▄▄▖"
echo "                 ▐████████████████████████████████████████▄"
echo "    ▄            ▟██████████████████████████████████████████▖"
echo "    ▝▙▄▄        ▄▟▄▄▟███████████▀▀▀▀▀▀▀▀▀▜███████████████████"
echo "      ▀███████████████▖▀▛▘▀▀▀▐███         ▝▙▄▟███████████████"
echo "        ▝▀▜███████████▙     ▀███▛▀        ▗▛████████████████▛"
echo "           ▝▀▜████ ▟█▜▜▄    ██▀▀▀▀▚       ▐███████▙▄▝▀██████"
echo "               ▝▀█▖▘    ▘▛   ▝            ▐█▀▜██████▌  ▝███▘"
echo "                  ▘                        ▌   ▝██████▄▄▞▀"
echo "                       ▌▝▀                 ▘▌▝ ▟███████▛▀"
echo "                   ▘   ▗     ▄▘▘▖          ▝  ▗███▀▜███▛▘"
echo "                      ▗▄▟██████▄▟▄         ▖ ▄████▙"
echo "                   ▗▗███████▀▀▀▀▘▝▌        ▝▜████▖▀▚▖"
echo "                   ▝███▙▖▄▄▄▖  ▝▘▄█         ▐███▀▀▘"
echo "                    ▜██▖          █         ▟███▖"
echo "                     ▜██████▄▄▄▄▄▖▀         ▟█▛▜▙"
echo "                      ▜████████▙           ▗███▙▄"
echo "                       ▜█████▖▄    ▄▀▄  ▗▄▟███████▖"
echo "                   ▗▟█▘█▄▛▜▜██▙███▙▟███████████████▙"
echo "                 ▗███▛ ▜███▙▄▄ ▐████████████████████▙▄▄▄"
echo "  ▗▄▄▄▄▄▄▄███▛▀▗▄████▌▗▙█████████████████████████████████▄"
echo "  ▐█▀  ▄▄██▛▀▗▟██████▙████████████████████████████████████▙▖"
echo "   ▐ ▐██▌     ██████████████████████████████████████████████"
echo "   ▝ ▝▀▀▘     ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"
echo "                These dotfiles are protected by:"
echo "   ________               __      _   __                _"
echo "  / ____/ /_  __  _______/ /__   / | / /___  __________(_)____"
echo " / /   / __ \/ / / / ___/ //_/  /  |/ / __ \/ ___/ ___/ / ___/"
echo "/ /___/ / / / /_/ / /__/ ,<    / /|  / /_/ / /  / /  / (__  )"
echo "\____/_/ /_/\__,_/\___/_/|_|  /_/ |_/\____/_/  /_/  /_/____/"
echo " _____        _                           __        "
echo " |  ___|      (_)                  _       \ \      "
echo " | |__  _ __   _   ___   _   _    (_)______ | |     "
echo " |  __|| '_ \ | | / _ \ | | | |     |______|| |     "
echo " | |___| | | || || (_) || |_| |    _        | |     "
echo " \____/|_| |_|| | \___/  \__, |   (_)       | |     "
echo "             _/ |         __/ |            /_/      "
echo "            |__/         |___/                      "
echo "______             _    _  _         _              "
echo "| ___ \           | |  | |(_)       (_)             "
echo "| |_/ / _   _     | |  | | _  _ __   _   ___ __  __ "
echo "| ___ \| | | |    | |/\| || || '_ \ | | / _ \\ \/ / "
echo "| |_/ /| |_| |    \  /\  /| || | | || ||  __/ >  <  "
echo "\____/  \__, |     \/  \/ |_||_| |_||_| \___|/_/\_\ "
echo "         __/ |                                      "
echo "        |___/                                       "
printf "\n"

echo "Contact Me: winiex.nie#gmail.com"
printf "\n"
