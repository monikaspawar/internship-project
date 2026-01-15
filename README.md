# Linux Fundamentals Assignment

## Overview
This repository contains documentation and practice exercises for learning Linux command-line basics, including directory navigation, file operations, permissions, and system monitoring.

## Assignment Objectives
1. Install and configure Ubuntu Linux (WSL/VirtualBox/VMware)
2. Master directory structure navigation
3. Practice file and directory operations
4. Learn file viewing and editing techniques
5. Understand and modify file permissions
6. Monitor system resources

## Contents
- `linux_assignment_documentation.md` - Complete assignment documentation with commands and outputs
- `screenshots/` - Directory containing assignment screenshots

## Screenshots

### Directory Navigation
![Directory Navigation](screenshots/navigation.png)

### File Operations
![File Operations](screenshots/file-operations.png)

### File Permissions
![File Permissions](screenshots/permissions.png)

### System Monitoring
![System Monitoring](screenshots/monitoring.png)

## Environment
- **OS:** Ubuntu Linux (WSL)
- **Tools Used:** bash, nano/vim, top, htop, df, free

## Key Commands Covered
- Navigation: `pwd`, `ls`, `cd`
- File Operations: `mkdir`, `touch`, `rm`, `rmdir`
- File Viewing: `cat`, `less`
- Editing: `nano`, `vim`
- Permissions: `chmod`, `chown`, `ls -l`
- Monitoring: `top`, `htop`, `df -h`, `free -m`

## How to Use
1. Clone this repository
   ```bash
   git clone https://github.com/monikaspawar/ELEVATE-LAB-INTERNSHIP.git
   cd ELEVATE-LAB-INTERNSHIP
   ```
2. Review `linux_assignment_documentation.md` for detailed command examples
3. Practice commands in your Linux environment
4. Document your own outputs and observations

## Quick Command Reference

### Navigation Commands
```bash
pwd                    # Print working directory
ls                     # List files
ls -la                 # List all files with details
cd /path               # Change directory
cd ~                   # Go to home directory
cd ..                  # Go up one level
```

### File Operations
```bash
mkdir dirname          # Create directory
mkdir -p dir1/dir2     # Create nested directories
touch filename.txt     # Create empty file
rm filename.txt        # Remove file
rm -r dirname          # Remove directory
rmdir dirname          # Remove empty directory
```

### File Viewing & Editing
```bash
cat file.txt           # Display file content
less file.txt          # View file with pagination
nano file.txt          # Edit with nano
vim file.txt           # Edit with vim
```

### File Permissions
```bash
ls -l                  # View permissions
chmod 755 file.txt     # Change permissions (numeric)
chmod u+x file.txt     # Add execute permission (symbolic)
chown user:group file  # Change ownership
```

### System Monitoring
```bash
top                    # Process monitor
htop                   # Enhanced process monitor
df -h                  # Disk usage
free -m                # Memory usage in MB
uptime                 # System uptime
```

## Git Commands to Push Changes
```bash
# Initialize repository
git init

# Add remote repository
git remote add origin https://github.com/monikaspawar/ELEVATE-LAB-INTERNSHIP.git

# Add files
git add .

# Commit changes
git commit -m "Add Linux assignment documentation"

# Push to GitHub
git branch -M main
git push -u origin main
```

## Author
Monika Pawar

## Date
2024

## Author
[Your Name]

## Date
[Current Date]
