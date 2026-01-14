#! /bin/bash

if [ $# -ne 1 ]
then
	echo "The script needs exactly one arguments"
	echo " $0 <source_dist>"
	exit 1
fi

source_dist=$1

# remove punctuation (,;.'")
#Convert all to lowercase 
#split into word(one word per line)
#sort and remove duplicates

tr -d '[:punct:]'  <  $source_dist |\
tr '[:upper:]' '[:lower:]' |\
tr ' ' '\n' |\
awk 'NF' |\
sort -u

