#!bin/bash

cat $1

echo
awk '{sum+=$4; for(i=1;i<=NF;i++) print NF, i} END {print "Avg score: ",sum, i}' $1