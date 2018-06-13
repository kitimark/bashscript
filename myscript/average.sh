#!bin/bash

echo "Calculating .. "

clear

gawk '
    BEGIN {FS = "\n"; RS = "\n=+\n"}
    NF > 0 {
        sum = 0
        for (i=1; i <=NF; i++) {
            print i, $i
            sum +=$i
        }
        print "N" , NF
        print "Summary " , sum
        print "Average " , sum/NF
    }
' $1