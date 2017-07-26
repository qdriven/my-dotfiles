#! /bin/sh
# install grafana influxdb
brew update
brew install grafana
brew install influxdb
# influxdb admin
brew install chronograf
# brew install kapacitor 
# start up 
# ln -sfv /usr/local/opt/influxdb/*.plist ~/Library/LaunchAgents
# launchctl load ~/Library/LaunchAgents/homebrew.mxcl.influxdb.plist

setsid nohup influxd &
setsid nohup chronograf &

# alias cgraf="chronograf"

