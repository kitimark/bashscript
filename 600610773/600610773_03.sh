#!bin/bash

i=1
while [ "$i" -le 10 ]
do
# create directory for file that created by 600601773_01.sh
    mkdir Data${i}
    if [ "$i" -lt 10 ]
    then
        mv data${i}.txt Data${i}/myfile0${i}.dat
    else
        mv data${i}.txt Data${i}/myfile${i}.dat
    fi

# create directory for file that created by 600610773_02.sh
    mkdir Program${i}
    if [ "$i" -lt 10 ]
    then
        mv mydata0${i}.dat Program${i}/mydata0${i}.dat
    else
        mv mydata${i}.dat Program${i}/mydata${i}.dat
    fi

    i=`expr $i + 1`
done