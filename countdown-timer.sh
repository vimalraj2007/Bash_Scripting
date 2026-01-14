#! /bin/bash

echo "Enter the CountDown Starting time"

read count

while [ $count -ge 0 ]
do
	echo "CountDown: $count"
	sleep 0.5
	count=$((count - 1))
done

echo "The CountDown Ends"

