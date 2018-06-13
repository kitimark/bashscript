#!bin/bash

i=1
while [ "$i" -le 10 ]
do
    j=1
    while [ "$j" -le "$i" ]
    do 
        if [ "$i" -lt 10 ]
        then
            echo "123456789" | cat >> mydata0${i}.dat
        else
            echo "123456789" | cat >> mydata${i}.dat
        fi
        j=`expr $j + 1`
    done
    i=`expr $i + 1`
done