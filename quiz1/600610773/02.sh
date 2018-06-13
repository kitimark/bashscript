#/bin/bash

for i in `seq 10`
do
    if ((i < 10))
    then
        num=0$i
    else
        num=$i
    fi

    for j in `seq $i`
    do
        echo 123456789 >> mydata$num.dat
    done
done