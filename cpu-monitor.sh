#!/bin/bash

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

if (( $(awk "BEGIN {print ($cpu_usage > 90)}") )); then
    echo "ALERT: Critical CPU usage detected ($cpu_usage%) - Possible malicious process or overload!"
elif (( $(awk "BEGIN {print ($cpu_usage > 70)}") )); then
    echo "WARNING: High CPU usage ($cpu_usage%) - Investigate running processes."
elif (( $(awk "BEGIN {print ($cpu_usage > 50)}") )); then
    echo "WARNING: High CPU usage ($cpu_usage%) - Investigate running processes."
else
    echo "INFO: CPU usage normal ($cpu_usage%)."
fi
