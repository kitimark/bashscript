#!bin/bash

sed '1d' $1 > list$1
sed '1d' $2 > list$2

# cat list$1
# cat list$2

echo Grade207:

# cut -d' ' -f1,2 list$1
# cut -d' ' -f1,2 list$2

# sed -e 's/[89][1234567890]/A/g' list$1 | sed -e 's/[76][1234567890]/B/g'

i=1
# `sed "/5400$i/!d" list$1 | cut -d' ' -f1`
while [ `sed "/5400$i/!d" list$1 | cut -d' ' -f1` != "" ]
do
    sed "/5400$i/!d" list$1 > list
    grade=`cut -d' ' -f3 list`
    # echo $grade
    if [ $grade -ge 80 ]
    then
        echo `cut -d' ' -f1,2 list` A
    elif [ $grade -ge 70 ]
    then
        echo `cut -d' ' -f1,2 list` B
    elif [ $grade -ge 60 ]
    then
        echo `cut -d' ' -f1,2 list` C
    elif [ $grade -ge 50 ]
    then
        echo `cut -d' ' -f1,2 list` D
    else
        echo `cut -d' ' -f1,2 list` F
    fi
    i=`expr $i + 1`
    # shift
done

i=1
# `sed "/5400$i/!d" list$1 | cut -d' ' -f1`
while [ `sed "/5500$i/!d" list$2 | cut -d' ' -f1` != "" ]
do
    sed "/5500$i/!d" list$2 > list
    grade=`cut -d' ' -f3 list`
    # echo $grade
    if [ $grade -ge 80 ]
    then
        echo `cut -d' ' -f1,2 list` A
    elif [ $grade -ge 70 ]
    then
        echo `cut -d' ' -f1,2 list` B
    elif [ $grade -ge 60 ]
    then
        echo `cut -d' ' -f1,2 list` C
    elif [ $grade -ge 50 ]
    then
        echo `cut -d' ' -f1,2 list` D
    else
        echo `cut -d' ' -f1,2 list` F
    fi
    i=`expr $i + 1`
    # shift
done

rm list$1 list$2 list