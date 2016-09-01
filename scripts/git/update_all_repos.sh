
#! /bin/sh

for f in ./*
do
  if [ -d f ]
  then
    echo $f might be a git repo
    cd $f
    echo "current dirctory is $PWD"
    git pull
    cd ..
    echo "back to $PWD"
  fi
done
