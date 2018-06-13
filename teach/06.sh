#!bin/bash

list=`cut -d',' -f2 $1`

echo $list

set $list

i=1
sum=0
while [ $1 != "" ]
do
    echo $i
    sum=`expr $sum + $1`
    shift
    i=`expr $i + 1`
done

echo Total: $sum baht