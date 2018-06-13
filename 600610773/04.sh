#!bin/bash

# find Data8 | grep myfile08.Data8

# echo --- $1 ---
# file=`find $2 | grep $1`

# cat $file

echo `find $2 | grep $1`

set `find $2 | grep $1`

while [ $1 != "" ]
do
    echo ---$1---
    cat $1
    shift
done