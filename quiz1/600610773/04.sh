#!/bin/bash

for dir in `find $2 -name $1`
do
    echo $dir > .dir_file
    echo --- `cut -d'/' -f3 .dir_file` ---
    cat $dir
    echo
    shift
done

rm .dir_file