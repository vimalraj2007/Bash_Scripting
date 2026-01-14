#! /bin/bash

#ping google.com to find the reachablity

echo "Enter which server to ping:"
read server

#server="google.com"

ping -c 1 -q $server>/dev/null 2>&1

if [ $? -eq 0 ]
then
	echo "Ping is successfully and the host $server is reachable"
	exit 0
else
	echo "Ping is Failed, the host $server is unreachable"
	exit 1
fi

