#!/bin/sh

# export alias
if [ -d ~/dotfiles ]
then
  echo "1. creat dotfiles if not existing"
  mkdir - p ~/dotfiles
fi
echo "2. copy dotfiles to ~/dotfiles"
cp -rf * ~/dotfiles

echo "3. start running installation scripts"
RC_FILE="$HOME/.zshrc"
echo "setting up in $RC_FILE"
sh alias/python_rc.sh
sh alias/go_rc.sh
sh alias/java_rc.sh
sh alias/git_rc.sh
source $RC_FILE


## Install MAC tools
echo "start install toolkit in MAC......"
sh mac/installation.sh
