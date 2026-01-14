#!/bin/bash

# Service Status Monitoring

services=("ssh" "cron" "apache2" "network-manager" "mysql" "postgresql" "nginx" "squid" "postfix" "dovecot" "ufw" "docker" "cups")

echo "======= Service Status Monitor ======="
echo "--------------------------------------"

for service in "${services[@]}"; do
    if systemctl list-unit-files | grep -q "^$service.service"; then
        if systemctl is-active --quiet "$service"; then
            echo "[+] $service is RUNNING"
        else
            echo "[-] $service is STOPPED"
        fi
    else
        echo "[!] $service is NOT INSTALLED"
    fi
done
