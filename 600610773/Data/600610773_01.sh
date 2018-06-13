#!bin/bash

i=1
while [ "$i" -le 10 ]
do
    echo "1234567890" | cat > data${i}.txt
    echo "11121314151617181920" | cat >> data${i}.txt
    echo "21222324252627282930" | cat >> data${i}.txt

    i=`expr $i + 1`
done