#!bin/bash

while [ true ]
do
    read -p "Your score = " grade

    if [ $grade -ge 80 ]
    then
        echo Your grade: A
    elif [ $grade -ge 70 ]
    then
        echo Your grade: B
    elif [ $grade -ge 60 ]
    then
        echo Your grade: C
    elif [ $grade -ge 50 ]
    then
        echo Your grade: D
    else
        echo Your grade: F
    fi
done