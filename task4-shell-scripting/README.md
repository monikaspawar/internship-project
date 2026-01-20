# Shell Scripting Task - DevOps Automation

## 📋 Task Overview
This task demonstrates shell scripting fundamentals for DevOps automation, including system monitoring, log management, and backup processes.

## 📸 Execution Screenshots

### System Information Script
![System Info Script](images/sys-ss.png)

### Variables and Loops Demo
![Variables Script](images/var-ss.png)
![Loop Script](images/loop.png)

### Log Cleanup Automation
![Log Cleanup](images/log-cleanup.png)

### Disk Usage Check
![Disk Check](images/dick-ss.png)

## 📁 Files Created
- `system_info.sh` - System information reporting
- `log_cleanup.sh` - Log file cleanup and backup
- `backup_automation.sh` - Automated backup with rotation
- `devops_tasks.sh` - Multi-task automation with parameters
- `cron_schedule.sh` - Scheduling examples
- `run_scripts.bat` - Windows execution wrapper

## 🔧 Script Features

### 1. System Information Script (`system_info.sh`)
```bash
#!/bin/bash
# Displays comprehensive system information
```
**Features:**
- Shebang line for bash execution
- System details (hostname, OS, kernel)
- CPU and memory information
- Disk usage and network info
- Current users and uptime

### 2. Log Cleanup Script (`log_cleanup.sh`)
```bash
#!/bin/bash
# Automated log cleanup with backup
```
**Features:**
- Variables for configuration
- Conditional checks for directories
- Loop through log files
- Backup before cleanup
- Root/user privilege handling

### 3. Backup Automation (`backup_automation.sh`)
```bash
#!/bin/bash
# Automated backup with rotation
```
**Features:**
- Array variables for source directories
- Functions for backup creation
- Backup rotation logic
- Error handling and reporting
- Tar compression

### 4. DevOps Tasks Script (`devops_tasks.sh`)
```bash
#!/bin/bash
# Demonstrates $@ and $* usage
```
**Features:**
- Command line argument processing
- Difference between `$@` and `$*`
- Case statement for task routing
- Function parameter passing
- Task automation framework

## 🚀 Execution Instructions

### Linux/WSL:
```bash
# Make scripts executable
chmod +x *.sh

# Run individual scripts
./system_info.sh
./log_cleanup.sh
./backup_automation.sh
./devops_tasks.sh "system check" "backup files"
```

### Windows:
```cmd
# Run using batch file
run_scripts.bat

# Or run individual scripts with bash
bash system_info.sh
bash devops_tasks.sh "system check" "log cleanup"
```

## 📊 Output Redirection Examples

```bash
# Redirect output to file
./system_info.sh > system_report.txt

# Redirect both stdout and stderr
./log_cleanup.sh > cleanup.log 2>&1

# Append to existing file
./backup_automation.sh >> backup.log

# Redirect to multiple destinations
./system_info.sh | tee system_info.txt
```

## ⏰ Scheduling Scripts

### Cron Examples:
```bash
# Daily system info at 6 AM
0 6 * * * /path/to/system_info.sh >> /var/log/system.log

# Weekly log cleanup on Sunday at 2 AM
0 2 * * 0 /path/to/log_cleanup.sh

# Backup every 6 hours
0 */6 * * * /path/to/backup_automation.sh
```

## 📝 Interview Questions & Answers

### Q: What is a shell script?
**A:** A shell script is a text file containing a sequence of commands that can be executed by a shell interpreter. It automates repetitive tasks and system administration.

### Q: What is shebang?
**A:** Shebang (`#!/bin/bash`) is the first line in a script that tells the system which interpreter to use for executing the script.

### Q: Explain loops in bash
**A:** Bash supports several loop types:
- `for` loop: Iterates over lists or ranges
- `while` loop: Continues while condition is true  
- `until` loop: Continues until condition becomes true

### Q: How to schedule scripts?
**A:** Use cron daemon:
- `crontab -e` to edit cron jobs
- `crontab -l` to list current jobs
- Format: `minute hour day month weekday command`

### Q: Difference between $@ and $*
**A:** 
- `$@` treats each argument as separate quoted strings
- `$*` treats all arguments as single string
- `$@` preserves spaces in arguments when quoted

## 🎯 Key Concepts Demonstrated

1. **Shebang Lines** - Proper script headers
2. **Variables** - Configuration and data storage
3. **Conditionals** - Decision making with if/else
4. **Loops** - Iteration with for/while
5. **Functions** - Code reusability
6. **Parameters** - Command line argument handling
7. **Redirection** - Output management
8. **Error Handling** - Robust script design
9. **Documentation** - Comments and usage info
10. **Automation** - DevOps task scheduling

## 📈 Learning Outcomes
- Shell scripting fundamentals
- DevOps automation techniques
- System administration tasks
- Error handling and logging
- Script scheduling and deployment
- Parameter processing and validation

---
**Task 4 Complete:** Shell scripting for DevOps automation ✅