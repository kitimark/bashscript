#!bin/bash

var1=$1
var2=$2

if [ "$var2" = "" ]
then
    var=.
fi

#find how much in file do you want to see it inside
line=`find $var2 | grep -c $var1`

# echo $line

# echo `find $var2 | grep $var1`
echo `find $var2 | grep $var1` | cat > .600610773_04list

list=`cat .600610773_04list`

echo $list
#show inside file that your search
# awk -F' ' '{print $1 "\n"}' ./600610773_04list
# i=0
# while [ "$i" -lt "$line" ]
# do
#     echo `awk -v var="$i" -F' ' '{print $`echo $var` "\n"}'`

#     i=`expr $i + 1`
# done 

echo $list | awk -F' ' '{for (i=1; i<=NF; i++) {print $i }}' > test.txt