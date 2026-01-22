#!/bin/bash
# Task 5: Process Management - Complete Assignment

echo "=== TASK 5: PROCESS MANAGEMENT ==="
echo "Date: $(date)"
echo

# 1. List running processes
echo "1. LISTING PROCESSES:"
ps aux | head -5
echo "Top CPU processes:"
ps aux --sort=-%cpu | head -3
echo

# 2. Kill processes demo
echo "2. KILL PROCESS DEMO:"
sleep 30 &
PID=$!
echo "Started test process PID: $PID"
kill $PID
echo "Killed process $PID with SIGTERM"
echo

# 3. Process states
echo "3. PROCESS STATES:"
ps -eo pid,stat,comm | head -5
echo

# 4. Service management
echo "4. SERVICE MANAGEMENT:"
systemctl status ssh --no-pager -l | head -10
echo

# 5. Enable/disable service
echo "5. SERVICE BOOT CONFIG:"
systemctl is-enabled ssh
echo

# 6. Resource monitoring
echo "6. RESOURCE MONITORING:"
free -h
uptime
echo

echo "=== TASK COMPLETED ==="