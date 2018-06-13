#!/bin/bash

while [ true ]
do
    echo -n "Your score = "
    read score
    
    echo -n "Your grade: "
    if ((score >= 80)); then
        echo A
    elif ((score >= 70)); then
        echo B
    elif ((score >= 60)); then
        echo C
    elif ((score >= 50)); then
        echo D
    else 
        echo F
    fi
done