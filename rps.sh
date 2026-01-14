#! /bin/bash

if [ $# -ne 2 ]
then
	echo "The script requires exactly two arguments"
	echo "$0 <source_dirt> <dist_dirt>"
	exit 1
fi

sour_dirt=$1
dis_dirt=$2

rsync -av "$sour_dirt" "$dis_dirt"

if [ $? -eq 0 ]
then
	echo "The rsync was successfully worked"
	exit 0
else
	echo "The rsync was not worked"
	exit 1
fi

