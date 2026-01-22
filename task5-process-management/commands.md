# Task 5: Process Management - Commands to Execute

## Screenshots Documentation
All command execution screenshots are stored in the `images/` folder:
- `ps-aux-output.png` - Process listing screenshots
- `top-command.png` - Top command output
- `kill-process.png` - Process termination demo
- `systemctl-status.png` - Service management screenshots
- `resource-monitoring.png` - System resource monitoring

## Step-by-Step Execution

### 1. List Running Processes
```bash
ps aux
ps -ef
top
ps aux --sort=-%cpu | head -10
ps aux --sort=-%mem | head -10
```
*📸 Screenshot: Save output to `images/ps-commands.png`*

### 2. Kill Processes
```bash
# Start test process
sleep 300 &
echo $!

# Kill gracefully
kill PID

# Force kill
kill -9 PID

# Kill by name
killall sleep
```
*📸 Screenshot: Save to `images/kill-process.png`*

### 3. Process States
```bash
ps -eo pid,ppid,stat,comm
ps aux | awk '{print $8}' | sort | uniq -c
```

### 4. Service Management
```bash
# Check what services are available first
systemctl list-units --type=service --state=active

# Use working services instead of ssh
systemctl status systemd-resolved
systemctl status dbus

# SSH troubleshooting
journalctl -xe | grep ssh
sudo apt update && sudo apt install openssh-server
```
*📸 Screenshot: Save to `images/systemctl-commands.png`*

### 5. Boot Services
```bash
sudo systemctl enable ssh
sudo systemctl disable ssh
systemctl is-enabled ssh
systemctl list-unit-files --type=service
```

### 6. Resource Monitoring
```bash
top
free -h
uptime
df -h
iostat
netstat -tulpn
```
*📸 Screenshot: Save to `images/resource-monitoring.png`*

### 7. Execute Complete Script
```bash
chmod +x complete_task.sh
./complete_task.sh > task5_results.txt
```

## Interview Questions to Prepare

1. What are different process states in Linux?
2. Difference between kill and kill -9?
3. How to start/stop services with systemctl?
4. How to enable service at boot?
5. How to monitor system resources?