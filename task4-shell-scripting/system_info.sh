#!/bin/bash
echo ======"SYSTEM INFORMATION" ======
echo "Hostname : $(hostname)"
echo "Date : $(date)"
echo "User : $(whoami)"
echo "uptime : $(uptime)"
echo "Disk Usage:"
df -h
