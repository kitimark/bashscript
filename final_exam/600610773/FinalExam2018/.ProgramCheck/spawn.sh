#!/bin/bash


id=$1

if [ ! -e $id ]
then
    mkdir $id
fi


dir=Multimedia

if [ ! -e $id/$dir ]
then
    mkdir $id/$dir
fi


i=1
while [ "$i" -le 150 ]
do
    touch $id/$dir/miyaba${i}.mp3
    i=`expr $i + 1`
done

echo "ok"

i=2
while [ "$i" -le 150 ]
do
    touch $id/$dir/miyaba${i}.mp4
    i=`expr $i + 2`
done

echo "ok"

i=3
while [ "$i" -le 100 ]
do
    touch $id/$dir/miyabe${i}.mp3
    i=`expr $i + 3`
done

echo "ok"

i=1
while [ "$i" -le 200 ]
do
    touch $id/$dir/miyabe${i}.mp4
    i=`expr $i + 4`
done

echo "ok"

i=2
while [ "$i" -le 100 ]
do
    touch $id/$dir/miyabo${i}.mp3
    i=`expr $i + 5`
done

echo "ok"

i=3
while [ "$i" -le 200 ]
do
    touch $id/$dir/miyabo${i}.mp4
    i=`expr $i + 6`
done

echo "ok"

i=1
while [ "$i" -le 150 ]
do
    touch $id/$dir/miyaba${i}.mq3
    i=`expr $i + 1`
done

echo "ok"


i=2
while [ "$i" -le 150 ]
do
    touch $id/$dir/miyaba${i}.mq4
    i=`expr $i + 2`
done

echo "ok"

i=3
while [ "$i" -le 100 ]
do
    touch $id/$dir/miyabe${i}.mq3
    i=`expr $i + 3`
done

echo "ok"

i=1
while [ "$i" -le 200 ]
do
    touch $id/$dir/miyabe${i}.mq4
    i=`expr $i + 4`
done

echo "ok"

i=2
while [ "$i" -le 100 ]
do
    touch $id/$dir/miyabo${i}.mq3
    i=`expr $i + 5`
done

echo "ok"

i=3
while [ "$i" -le 200 ]
do
    touch $id/$dir/miyabo${i}.mq4
    i=`expr $i + 6`
done

echo "ok"

i=1
while [ "$i" -le 150 ]
do
    touch $id/$dir/miyaba${i}.mg3
    i=`expr $i + 1`
done

echo "ok"
i=2
while [ "$i" -le 150 ]
do
    touch $id/$dir/miyaba${i}.mg4
    i=`expr $i + 2`
done

echo "ok"
i=3
while [ "$i" -le 100 ]
do
    touch $id/$dir/miyabe${i}.mg3
    i=`expr $i + 3`
done

echo "ok"
i=1
while [ "$i" -le 200 ]
do
    touch $id/$dir/miyabe${i}.mg4
    i=`expr $i + 4`
done

echo "ok"
i=2
while [ "$i" -le 100 ]
do
    touch $id/$dir/miyabo${i}.mg3
    i=`expr $i + 5`
done

echo "ok"
i=3
while [ "$i" -le 200 ]
do
    touch $id/$dir/miyabo${i}.mg4
    i=`expr $i + 6`
done


i=1
while [ "$i" -le 120 ]
do
    touch $id/$dir/sori${i}.mp3
    i=`expr $i + 1`
done

echo "ok"

i=2
while [ "$i" -le 120 ]
do
    touch $id/$dir/sori${i}.mp4
    i=`expr $i + 2`
done

echo "ok"
i=3
while [ "$i" -le 110 ]
do
    touch $id/$dir/sore${i}.mp3
    i=`expr $i + 3`
done

echo "ok"
i=1
while [ "$i" -le 198 ]
do
    touch $id/$dir/sore${i}.mp4
    i=`expr $i + 4`
done

echo "ok"
i=2
while [ "$i" -le 110 ]
do
    touch $id/$dir/soro${i}.mp3
    i=`expr $i + 5`
done

echo "ok"
i=3
while [ "$i" -le 198 ]
do
    touch $id/$dir/soro${i}.mp4
    i=`expr $i + 6`
done

i=1
while [ "$i" -le 120 ]
do
    touch $id/$dir/sori${i}.mq3
    i=`expr $i + 1`
done

echo "ok"
i=2
while [ "$i" -le 120 ]
do
    touch $id/$dir/sori${i}.mq4
    i=`expr $i + 2`
done

echo "ok"
i=3
while [ "$i" -le 110 ]
do
    touch $id/$dir/sore${i}.mq3
    i=`expr $i + 3`
done

echo "ok"
i=1
while [ "$i" -le 198 ]
do
    touch $id/$dir/sore${i}.mq4
    i=`expr $i + 4`
done

echo "ok"
i=2
while [ "$i" -le 110 ]
do
    touch $id/$dir/soro${i}.mq3
    i=`expr $i + 5`
done

echo "ok"
i=3
while [ "$i" -le 198 ]
do
    touch $id/$dir/soro${i}.mq4
    i=`expr $i + 6`
done

echo "ok"
i=1
while [ "$i" -le 120 ]
do
    touch $id/$dir/sori${i}.mg3
    i=`expr $i + 1`
done

echo "ok"
i=2
while [ "$i" -le 120 ]
do
    touch $id/$dir/sori${i}.mg4
    i=`expr $i + 2`
done

echo "ok"
i=3
while [ "$i" -le 110 ]
do
    touch $id/$dir/sore${i}.mg3
    i=`expr $i + 3`
done

echo "ok"
i=1
while [ "$i" -le 198 ]
do
    touch $id/$dir/sore${i}.mg4
    i=`expr $i + 4`
done

echo "ok"
i=2
while [ "$i" -le 110 ]
do
    touch $id/$dir/soro${i}.mg3
    i=`expr $i + 5`
done

echo "ok"
i=3
while [ "$i" -le 198 ]
do
    touch $id/$dir/soro${i}.mg4
    i=`expr $i + 6`
done

cp -r .ProgramCheck/WebDevelopment $id
cp .ProgramCheck/.examCheck.bash $id
echo $id > $id/.studentName.txt
echo "OK"