#!/bin/bash


echo No. Name Score
tail -n+2 $1 | cut -d' ' -f1,2,4 | sort
 
count=0
for i in `tail -n+2 $1 | cut -d' ' -f4`
do
    # echo $i
    ((count++))
    ((avg=avg+i))
    shift
done

# echo $count
((avg=avg/count)) 
echo Avg score : $avg