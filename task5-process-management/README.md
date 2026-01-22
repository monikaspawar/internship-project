# How to Complete Task 5: Process Management

## Quick Execution (Windows)
```cmd
cd task5-process-management
powershell -ExecutionPolicy Bypass -File complete_task.ps1
```

## Linux Commands (for documentation/interview)
```bash
# 1. List processes
ps aux
top

# 2. Kill processes  
kill PID
kill -9 PID

# 3. Process states
ps -eo pid,stat,comm

# 4. Services
systemctl status ssh
systemctl start ssh
systemctl stop ssh

# 5. Boot services
systemctl enable ssh
systemctl disable ssh

# 6. Monitor resources
free -h
uptime
df -h
```

## Assignment Completion Checklist
- [x] Created process listing commands
- [x] Demonstrated kill operations
- [x] Showed process states
- [x] Service start/stop examples
- [x] Boot service configuration
- [x] Resource monitoring
- [x] Documented findings

## Files Created
- `complete_task.ps1` - Windows execution script
- `complete_task.sh` - Linux version
- `commands.md` - Command reference
- `README.md` - This guide