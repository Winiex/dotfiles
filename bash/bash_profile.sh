#!/usr/bin/env bash
BASH_HOME=$HOME/.dotfiles/bash
DISTRO=`uname -a`

# Load configurations
source $BASH_HOME/configs/bashit.sh
source $BASH_HOME/configs/python.sh
source $BASH_HOME/configs/rvm.sh
source $BASH_HOME/configs/virtualenv.sh
source $BASH_HOME/configs/osx.sh
