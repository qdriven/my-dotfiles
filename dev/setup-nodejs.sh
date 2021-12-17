#! /bin/sh

# setup npm repo
# npm config set registry https://registry.npm.taobao.org --global
npm install cnpm -g -registry=https://registry.npm.taobao.org
# setup npm alias is cnpm
echo "alias npm=cnpm" >> ~/.zshrc && source ~/.zshrc