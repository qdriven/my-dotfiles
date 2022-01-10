#!/bin/sh

sudo apt install zsh
chsh -s $(which zsh)
sh ../config/oh-my-zsh/setup.sh