#!/bin/bash

file=$1

total=0

if [ "$file" != "" ]
then
    i=0
    for word in $(cut -d',' -f2 $file)
    do
        ((price[$i]=word))
        ((i++))
        shift
    done

    i=0
    for word in $(cut -d',' -f3 $file)
    do
        ((amount[$i]=word))
        ((i++))
        shift
    done

    j=0
    for word in $(cut -d',' -f1 $file)
    do
        echo -n $word | tr a-z A-z >> .cal
        echo -n "(${amount[j]})" >> .cal
        ((priceitem=price[$j]*amount[$j])) >> .cal
        echo -n " : $priceitem" >> .cal
        echo >> .cal

        ((sumPrice=sumPrice+price[$j]*amount[$j]))
        ((sumAmount=sumAmount+amount[$j])) 
        ((j++))
    done

    sort .cal

    echo "Total($sumAmount) : $sumPrice"
    
    rm .cal
else
    echo Where is your inputfile? 
fi
