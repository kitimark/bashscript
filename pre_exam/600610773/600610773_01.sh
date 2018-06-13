#!/bin/bash

dir=$1

mkdir $1/Music $1/Movie

# find $1 -name "*.mp3" > .listmp3
# find $1 -name "*.mp4" > .listmp4

mp3=`find $1 -name "*.mp3" | wc -l`
mp4=`find $1 -name "*.mp4" | wc -l`
all=`find $1 -name "*.*" | wc -l`

((amount=$mp3+$mp4))

# echo $mp3
# echo $mp4
# echo amount=$amount

for i in `find $1 -name "*.mp3"`; do
  mv $i $dir/Music
  shift
done

for i in `find $1 -name "*.mp4"`; do
  mv $i $dir/Movie
  shift
done

echo Music  $mp3
echo Movie  $mp4
echo Total  $all
