#!/bin/bash

for count in `seq 10`
do
    # printf "$count \n"
    if ((count < 10))
    then
        num=0$count
    else
        num=$count
    fi

    mkdir Data$count
    mv ./data$count.txt ./Data$count/data$num.dat

    mkdir Program$count
    mv ./mydata$num.dat ./Program$count/
done