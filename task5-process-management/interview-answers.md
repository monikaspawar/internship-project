# Task 5: Interview Questions - Quick Answers

## 1. Process States in Linux
- **R** - Running (currently executing)
- **S** - Sleeping (waiting for event, interruptible)
- **D** - Disk Sleep (waiting for I/O, uninterruptible)
- **T** - Stopped (by signal or debugger)
- **Z** - Zombie (terminated but not cleaned up)

## 2. Difference between kill and kill -9
- **kill PID** - Sends SIGTERM (15), graceful shutdown, process can handle/ignore
- **kill -9 PID** - Sends SIGKILL (9), immediate termination, cannot be caught

## 3. Start/Stop Services with systemctl
```bash
systemctl start service_name    # Start service
systemctl stop service_name     # Stop service
systemctl restart service_name  # Restart service
systemctl status service_name   # Check status
```

## 4. Enable Service at Boot
```bash
systemctl enable service_name   # Auto-start at boot
systemctl disable service_name  # Don't auto-start
systemctl is-enabled service    # Check if enabled
```

## 5. Monitor System Resources
```bash
top          # Real-time processes
free -h      # Memory usage
uptime       # Load average
df -h        # Disk usage
ps aux       # All processes
iostat       # I/O statistics
```