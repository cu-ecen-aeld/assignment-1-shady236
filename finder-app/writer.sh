#!/bin/sh

if [ $# -ne 2 ]
then
	echo "ERROR: Inavlid Number of Arguments."
	echo "Total number of arguments should be 2."
	echo "The order of the arguments should be:"
	echo "\t1)File Path."
	echo "\t2)String to be written in the specified file path."
	exit 1
fi

writefile=$1
writestr=$2

#if [ -r ${writefile} ]
#then
	mkdir -p "$(dirname ${writefile})"
	echo ${writestr} > ${writefile}
	exit 0
#else 
#	echo "ERROR: Inavlid Type of Arguments."
#	echo "The order of the arguments should be:"
#	echo "\t1)File Path."
#	echo "\t2)String to be written in the specified file path."
#	exit 1
#fi


