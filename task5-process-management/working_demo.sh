#!/bin/bash
# Task 5: Process Management - Working Commands

echo "=== TASK 5: PROCESS MANAGEMENT (WSL Compatible) ==="
echo "Date: $(date)"
echo

# 1. List running processes
echo "1. LISTING PROCESSES:"
ps aux | head -5
echo
echo "Top CPU processes:"
ps aux --sort=-%cpu | head -3
echo

# 2. Kill processes demo
echo "2. KILL PROCESS DEMO:"
sleep 10 &
PID=$!
echo "Started test process PID: $PID"
sleep 2
kill $PID 2>/dev/null
echo "Killed process $PID"
echo

# 3. Process states
echo "3. PROCESS STATES:"
ps -eo pid,stat,comm | head -5
echo "Process state counts:"
ps aux | awk 'NR>1 {print $8}' | sort | uniq -c
echo

# 4. Service management (use working services)
echo "4. SERVICE MANAGEMENT:"
echo "Checking available services..."
systemctl list-units --type=service --state=active | head -5
echo
echo "Systemd status:"
systemctl status systemd-resolved --no-pager -l | head -5 2>/dev/null || echo "Service not available"
echo

# 5. Boot services
echo "5. BOOT SERVICES:"
echo "Enabled services:"
systemctl list-unit-files --type=service --state=enabled | head -3
echo

# 6. Resource monitoring
echo "6. RESOURCE MONITORING:"
echo "Memory usage:"
free -h
echo
echo "System uptime:"
uptime
echo
echo "Disk usage:"
df -h | head -3
echo

# SSH troubleshooting
echo "7. SSH TROUBLESHOOTING:"
echo "Checking SSH service dependency issue:"
journalctl -xe | grep ssh | tail -3 2>/dev/null || echo "Journal not accessible"
echo
echo "Alternative: Check if SSH is installed:"
which ssh || echo "SSH client not installed"
which sshd || echo "SSH daemon not installed"

echo "=== TASK COMPLETED ==="