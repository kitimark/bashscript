#!/bin/bash

dir=backup`date +%y%m%d`
mkdir $dir

for i in `seq 5`
do
    tar cvfz ./$dir/file$i.tar.gz ./file$i.dat
done