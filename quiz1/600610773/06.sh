#!/bin/bash
sum=0

for i in `cut -d',' -f2 $1`
do
    # echo $i
    ((sum=i+sum))
    shift
done

echo Total: $sum bath