#!/bin/bash


echo "=== System Information Script ==="


echo -e "\n--- Hostname ---"

hostname


echo -e "\n--- Operating System ---"

lsb_release -d | cut -f2


echo -e "\n--- Uptime ---"

uptime -p


echo -e "\n--- Kernel Version ---"

uname -r


echo -e "\n--- CPU Info ---"

lscpu | grep -E 'Model name|CPU\(s\)|Architecture|Thread|Core'


echo -e "\n--- Memory Info (Free/Total) ---"

free -h


echo -e "\n--- Network Info ---"

ip -br addr


echo -e "\n--- Filesystem Info ---"

df -hT


echo -e "\n--- Last 5 Errors in Logs ---"

journalctl -p err -n 100 | grep -i error | tail -n 5

