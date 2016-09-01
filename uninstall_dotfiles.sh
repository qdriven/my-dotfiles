#! /bin/#!/bin/sh

if [ -d ~/dotfiles ]
then
   echo "try to remove ~/dotfiles"
   echo "1. backup ~/dotfiles"
   mkdir -p ~/dotfiles_bnk
   cp -rf ~/dotfiles ~/dotfiles_bnk
   echo "2. remove the ~/dotfiles"
   rm -rf ~/dotfiles
fi
