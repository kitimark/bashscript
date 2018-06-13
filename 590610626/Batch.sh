i=1
while [ "$i" -le 5 ]
do	
	echo "$i"
	echo 'Hello linux!' > file$i.dat
	i=`expr $i + 1`
done

