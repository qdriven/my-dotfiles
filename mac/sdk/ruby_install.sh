#!/bin/sh

curl -L get.rvm.io | bash -s stable
rvm list known
rvm install 3.0.0
rvm list

## install rbenv
brew install rbenv

# run shell in ruby
rbenv shell 3.0.0
## set default ruby version
rvm alias create default 3.0.0

## set ruby source
gem source -r https://rubygems.org/
gem source -a https://gems.ruby-china.com
gem sources -l

# sudo gem update --system
sudo gem update -n /usr/local/bin —system

# install cocoapods
brew install cocoapods
pod --version
brew update
brew upgrade cocoapods

sudo gem install -n /usr/local/bin cocoapods
sudo gem install cocoapods -n /usr/local/bin
pod setup
pod repo add master https://github.com/CocoaPods/Specs.git
pod repo list

gem list
# uninstall
# sudo gem uninstall cocoapods
rm -rf ~/Library/Application\Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcpluginrm -rf ~/Library/Application\Support/Alcatraz


