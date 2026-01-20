#!/bin/bash
# Git Push Script for Task 4 - Shell Scripting

echo "=== PUSHING TASK 4 TO GITHUB ==="
echo "Adding all files..."

# Add all new files
git add .

# Commit with descriptive message
git commit -m "Task 4: Shell Scripting - DevOps Automation Complete

✅ Created comprehensive shell scripts:
- system_info.sh - System monitoring and reporting
- log_cleanup.sh - Automated log management
- backup_automation.sh - Backup with rotation
- devops_tasks.sh - Multi-task automation with parameters
- cron_schedule.sh - Scheduling examples

✅ Documentation:
- interview-questions.md - Complete Q&A guide
- execution-screenshots.md - Script execution results
- README.md - Comprehensive task documentation

✅ Features demonstrated:
- Shebang lines and script structure
- Variables, conditionals, and loops
- Functions and parameter handling
- \$@ vs \$* differences
- Output redirection and error handling
- Cron scheduling examples
- Cross-platform compatibility (bash + PowerShell)

✅ Final Outcome: Intern successfully automated repetitive DevOps tasks"

# Push to GitHub
echo "Pushing to GitHub..."
git push origin main

echo "=== TASK 4 PUSHED SUCCESSFULLY ==="
echo "Repository: https://github.com/monikaspawar/internship-project.git"