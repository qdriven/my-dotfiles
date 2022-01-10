#!/bin/sh

brew install --HEAD luajit
brew install --HEAD neovim

## install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
mkdir -p ~/.config/nvim
# touch ~/.config/nvim/init.lua
## install plugins
# git clone https://github.com/NvChad/NvChad ~/.config/nvim
# nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

## install lin.vim
git clone https://github.com/linrongbin16/lin.vim ~/.vim 
cd ~/.vim 
./install.sh
