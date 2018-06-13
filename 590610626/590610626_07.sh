#!/bin/bash

cat $1

echo
awk '{sum+=$4} END {print "Avg score: ",sum}' $1
