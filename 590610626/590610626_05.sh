i=1
date=`date '+%Y-%M-%d'`
mkdir "Backup"$date
while [ "$i" -le 5 ]
do
	tar cvfz file$i.tar.gz file$i.dat
	mv file$i.tar.gz Backup*
	i=`expr $i + 1`
done


