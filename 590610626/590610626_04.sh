if [ "$2" != "" ]
then
	echo "----${1}----"
	find ${2} -name ${1} -exec cat {} \;
else
	echo "----${1}----"
	find . -name ${1} -exec cat {} \;
fi
