i=1
while [ "$i" -le 10 ]
do
	mkdir Data$i
	mkdir Program$i
	mv data$i.txt myfile0$i.dat
	mv myfile0$i.dat Data$i
	mv mydata$i.dat Program$i
	i=`expr $i + 1`
done
