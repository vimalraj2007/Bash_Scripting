#!/bin/bash

#Log Analyzer (Kali Linux, systemd journal)

echo "Analyzed Source: systemd journal (journalctl)"
echo "---------------------------------------------"

# 1. Count failed logins

failed=$(journalctl -u sshd --no-pager | grep -i "Failed password" | wc -l)
echo "[!] Failed logins: $failed"

# 2. Count successful logins

success=$(journalctl -u sshd --no-pager | grep -i "Accepted password" | wc -l)
echo "[+] Successful logins: $success"

# 3. Unique usernames (failed attempts)

echo "Unique usernames (failed attempts):"
journalctl -u sshd --no-pager | grep -i "Failed password" | awk '{print $NF}' | sort | uniq

# 4. Top attacking IPs (failed attempts)

echo "Top attacking IPs:"
journalctl -u sshd --no-pager | grep -i "Failed password" | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr | head -10

