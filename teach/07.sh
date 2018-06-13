#!bin/bash

cut -d' ' -f1,2,4 $1 | sort 

list=`cut -d' ' -f4 $1`

set $list
shift

sum=0
i=0
while [ $1 != "" ]
do
    i=`expr $i + 1`
    echo $i
    sum=`expr $sum + $1`
    shift
done

echo Avg score: `expr $sum / $i`