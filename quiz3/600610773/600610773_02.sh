#!/bin/bash

i=0

while ((i<100))
do
    ((i++))

    if ((i<10))
    then
        num=00$i
    elif ((i<100))
    then
        num=0$i
    else
        num=$i
    fi

    j=0
    if ((i%2==0))
    then
        while [ "$j" -lt "$i" ]
        do
            ((j++))
            echo 24681012141618202224262830 >> mydata$num.dat
        done
    else
            while [ "$j" -lt "$i" ]
        do
            ((j++))
            echo 1357911131517192123252729 >> mydata$num.dat
        done
    fi
done