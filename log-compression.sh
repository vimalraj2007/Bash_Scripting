#! /bin/bash

# YYYY-MM-DD

today=$(date +%F)

achieve_name="logs-$today.tar.gz"

tar -cvzf $achieve_name /var/log/*.log

echo "Successfully Log compressed all the log in /var/log to $achieve_name"

