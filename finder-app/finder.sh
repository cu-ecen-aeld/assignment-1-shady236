#!/bin/sh

if [ $# -ne 2 ]
then
	echo "ERROR: Inavlid Number of Arguments."
	echo "Total number of arguments should be 2."
	echo "The order of the arguments should be:"
	echo "\t1)File Directory Path."
	echo "\t2)String to be searched in the specified directory path."
	exit 1
fi

filesdir=$1
searchstr=$2

if [ -d ${filesdir} ]
then
	cd ${filesdir}
	echo "The number of files are $(grep -rcH ${searchstr} * | wc -l) and the number of matching lines are $(grep -rH ${searchstr} * | wc -l)"
	exit 0
else 
	echo "ERROR: Inavlid Type of Arguments."
	echo "The order of the arguments should be:"
	echo "\t1)File Directory Path."
	echo "\t2)String to be searched in the specified directory path."
	exit 1
fi

