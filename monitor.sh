#!/bin/bash

echo "===== EC2 MONITORING REPORT ====="
echo "Date: $(date)"
echo ""

echo "Running Services:"
systemctl list-units --type=service --state=running --no-pager | head -20

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h
