#!bin/bash 

echo $#
cat $1 | tail -n+2

shift
echo $#
cat $1 | tail -n+2
