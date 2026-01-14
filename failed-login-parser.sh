#! /bin/bash

#failed logs

logfailed=/var/log/syslog

echo "======= Failed Logs ======="
sudo journalctl -u sshd | grep -i "failed"

echo "======= IP addresses ======="
sudo journalctl -u sshd | grep -i "failed" | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'

echo "======= Usernames ======="
sudo journalctl -u sshd | grep -i "failed" | awk '{print $NF}'

