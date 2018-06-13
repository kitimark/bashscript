#!/bin/bash

i=0

mkdir myBackupProgram

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

    mv ./data$i.txt ./data$num.txt
    mv ./data$num.txt ./myBackupProgram/
    mv ./mydata$num.dat ./myBackupProgram/mydata$num.txt

done 