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
writedir="$(dirname ${writefile})"

mkdir -p $writedir 
if [ $? -ne 0 ]
then
  echo "directory could not be created, permission denied"
  exit 1
fi

echo ${writestr} > ${writefile}
if [ $? -ne 0 ]
then
  echo "file could not be created, permission denied"
  exit 1
fi
exit 0

#if [ -r ${writefile} ]
#then
#	mkdir -p "$(dirname ${writefile})"
#	echo ${writestr} > ${writefile}
#	exit 0
#else 
#	echo "ERROR: Inavlid Type of Arguments."
#	echo "The order of the arguments should be:"
#	echo "\t1)File Path."
#	echo "\t2)String to be written in the specified file path."
#	exit 1
#fi


