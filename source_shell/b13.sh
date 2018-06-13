#!/bin/bash
    
num=$1
while [ "$num" -lt 10 ]
do
    echo '$num'" is $num"
    num=`expr $num + 1`
done
