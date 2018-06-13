i=1
while [ "$i" -le 10 ]
do
	echo $i
	echo '12345678910
11121314151617181920
21222324252627282930' > data$i.txt
	i=`expr $i + 1`
done
echo '******FILE WAS CREATED*******'
