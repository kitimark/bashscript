#!bin/bash

echo $RANDOM > score.dat

i=1
while [ $i -lt 19 ]
do
    echo $RANDOM >> score.dat
    i=`expr $i + 1`
done