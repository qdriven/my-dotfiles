#! /bin/zsh

for file in ./*
do
  if test -d $file
  then
    echo $file is directory
    cd $file
    a=$(pwd)
    echo $a
    cat .git/config | grep url >> $GIT_COLLECTION/py.md
    cd ..
    b=$(pwd)
    echo $b
  fi

done
