#! /bin/sh

unset TMPDIR
mkdir /usr/local/var
mysql_install_db --verbose --user=`whoami` \
--basedir="$(brew --prefix mysql)" \
--datadir=/usr/local/var/mysql --tmpdir=/tmp

# start mysql
mysql.server start

# stop mysql
mysql.server start

# help
mysql.server --help

# login
mysql -uroot

# set root password
mysqladmin -u root password 'new-password'

# configuration of mysql
cat /usr/local/etc/my.cnf

# set to LaunchAgents
# mkdir -p ~/Library/LaunchAgents
# cp /usr/local/Cellar/mysql/5.5.20/homebrew.mxcl.mysql.plist ~/Library/LaunchAgents/
# launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
