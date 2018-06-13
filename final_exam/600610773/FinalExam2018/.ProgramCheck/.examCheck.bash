#!/bin/bash

echo "---- Start!! --- "
studentID=`cat .studentName.txt`
tar cvfz ${studentID}.tar.gz *.sh *.html
echo "Check OKKKKKK!!"