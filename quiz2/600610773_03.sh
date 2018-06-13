#!bin/bash

list=`ls *.dat`

set $list

while [ $1 != "" ]
do
    if [ `cat $1 | grep "CPE" | cut -d' ' -f1` != "" ]
    then 
        echo $1 >> file
    fi
    shift
done

file=`cat file`

cat $file



# set $file

# while [ $1 != "" ]
# do
#     echo $1
#     shift
# done
