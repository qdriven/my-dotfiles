#!/bin/bash

# to tools folder
clear
echo "go to tools path:"
basePath="/Users/patrick/workspace/tools"
cd $basePath

# start to look up folders, and suppose in the first
# level folder, there is no git repositories
# git repository is only existing in the second level folder
echo "start lookup folders:"

for file in ./*
do
  if test -d $file
  then
    echo go to $file
    cd $file
    for repo in ./*
    do
      echo go to $repo
      cd $repo
      git pull
      cd ..
      echo $(pwd) is current folder
    done

  fi

done

# log update history

log_file="update_log.md"
cd $basePath
if [[ ! -f $log_file ]];then
  touch $log_file
  echo "# Update History" >> $log_file
fi

current_date=`date '+%Y-%m-%d %H:%M:%S'`
echo "update time:" $current_date
echo "udpate the tools in " $current_date >>$log_file

cat $log_file





