#!/bin/bash

sed -e 's/,/    /g' $1 > .temp06

awk '{sum+=$2} END {print sum}'  .temp06
