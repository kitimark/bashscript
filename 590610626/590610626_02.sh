i=1
while [ "$i" -le 10 ]
do
	echo $i 'was created'
	touch mydata$i.dat
	loop=1
	while [ "$loop" -le "$i" ]
	do
		echo '123456789' >> mydata$i.dat
		loop=`expr $loop + 1`
	done
	i=`expr $i + 1`
done
echo '******FILE WAS CREATED*******'
