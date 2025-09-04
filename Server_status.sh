#!/bin/bash

echo "========================================"
echo " SERVER PERFORMANCE STATUS"
echo " Run on: $(date)"
echo "========================================"

# OS version
echo -e "\n--- OS Version ---"
if [ -f /etc/os-release ]; then
    grep -E "PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"'
else
    uname -a
fi

# Uptime
echo -e "\n--- Uptime ---"
uptime


echo -e "\n--- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'


echo -e "\n--- Memory Usage ---"
free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%.2f%%)\n", $3, $2, $3*100/$2 }'


echo -e "\n--- Disk Usage ---"
df -h --total | grep 'total' | awk '{printf "Used: %s / Total: %s (%s used)\n",$3,$2,$5}'


echo -e "\n--- Top 5 Processes by CPU Usage ---"
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -n 6


echo -e "\n--- Top 5 Processes by Memory Usage ---"
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%mem | head -n 6


echo -e "\n--- Logged In Users ---"
who

echo -e "\n--- Failed Login Attempts (last 10) ---"
if [ -f /var/log/auth.log ]; then
    grep "Failed password" /var/log/auth.log | tail -n 10
elif [ -f /var/log/secure ]; then
    grep "Failed password" /var/log/secure | tail -n 10
else
    echo "No authentication log file found."
fi

echo -e "\n========================================"
echo " End of report"
 
