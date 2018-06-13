#!/bin/bash

echo $1
echo
dir=$1


musicFiles=`find $dir -name "*.mp3" | wc -l`
movieFiles=`find $dir -name "*.mp4" | wc -l`

# micsFiles=`find $dir -not -name "*.mp3" -not -name "*.mp4" | wc -l`
# allFiles=`find $dir | wc -l`

echo Music $musicFiles
echo Movie $movieFiles
echo Total $(($musicFiles+$movieFiles))

# echo
# echo Other $micsFiles
# echo Test $(($allFiles-$micsFiles))

mkdir $dir/Music
mkdir $dir/Movie

for file in `find $dir -name "*.mp3"`; do
    mv $file $dir/Music
    shift
done

for file in `find $dir -name "*.mp4"`; do
    mv $file $dir/Movie
    shift
done

for file in `find $dir -not -name "*.mp3" -not -name "*.mp4" -not -name "Music" -not -name "Movie" -not -name $dir`; do
    rm $file
done