#!/bin/bash

i=0

while ((i<100))
do
    ((i++))

    j=0
    while [ "$j" -lt 50 ]
    do
    ((j++))
        if ((j%2==0))
        then
            echo Bbbbbbbbbb >> data$i.txt
        else
            echo Aaaaaaaaaa >> data$i.txt
        fi
    done
done