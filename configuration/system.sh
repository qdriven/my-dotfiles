#/bin/sh

OS_NAME=`uname -s`

a=`uname  -s`
 
b="Darwin"
c="centos"
d="ubuntu"
 
if [ $a =~ $b ];then
    echo "mac"
elif [ $a =~ $c ];then
    echo "centos"
elif [ $a =~ $d ];then
    echo "ubuntu"
else
    echo $a
fi