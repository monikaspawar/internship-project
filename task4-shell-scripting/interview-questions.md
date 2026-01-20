# Shell Scripting Interview Questions & Answers

## 1. What is a shell script?

A shell script is a text file containing a sequence of commands that can be executed by a shell interpreter (like bash, sh, zsh). It automates repetitive tasks, system administration, and complex operations.

**Key Features:**
- Executable text files with commands
- Automates manual tasks
- Supports variables, loops, conditionals
- Used for system administration and DevOps

**Example:**
```bash
#!/bin/bash
echo "Hello World"
date
whoami
```

## 2. What is shebang?

Shebang (`#!`) is the first line in a script that tells the system which interpreter to use for executing the script.

**Syntax:** `#!/path/to/interpreter`

**Common Examples:**
```bash
#!/bin/bash          # Bash shell
#!/bin/sh            # Bourne shell
#!/usr/bin/python3   # Python 3
#!/usr/bin/env node  # Node.js
```

**Purpose:**
- Specifies the interpreter
- Makes script executable directly
- Ensures portability across systems

## 3. Explain loops in bash

Bash supports three main loop types:

### For Loop
```bash
# Iterate over list
for item in apple banana cherry; do
    echo $item
done

# Iterate over files
for file in *.txt; do
    echo "Processing $file"
done

# C-style loop
for ((i=1; i<=5; i++)); do
    echo "Number: $i"
done
```

### While Loop
```bash
counter=1
while [ $counter -le 5 ]; do
    echo "Count: $counter"
    counter=$((counter + 1))
done
```

### Until Loop
```bash
counter=1
until [ $counter -gt 5 ]; do
    echo "Count: $counter"
    counter=$((counter + 1))
done
```

## 4. How to schedule scripts?

### Using Cron (Linux/Unix)

**Edit crontab:**
```bash
crontab -e    # Edit cron jobs
crontab -l    # List current jobs
crontab -r    # Remove all jobs
```

**Cron Format:**
```
* * * * * command
│ │ │ │ │
│ │ │ │ └── Day of week (0-6, Sunday=0)
│ │ │ └──── Month (1-12)
│ │ └────── Day of month (1-31)
│ └──────── Hour (0-23)
└────────── Minute (0-59)
```

**Examples:**
```bash
# Daily at 6 AM
0 6 * * * /path/to/script.sh

# Every 15 minutes
*/15 * * * * /path/to/script.sh

# Weekly on Sunday at 2 AM
0 2 * * 0 /path/to/script.sh

# Monthly on 1st at midnight
0 0 1 * * /path/to/script.sh
```

### Using Task Scheduler (Windows)
```powershell
# Create scheduled task
schtasks /create /tn "MyScript" /tr "powershell.exe -File C:\script.ps1" /sc daily /st 09:00
```

## 5. Difference between $@ and $*

Both represent all command line arguments, but handle them differently:

### $@ (Recommended)
- Treats each argument as separate quoted strings
- Preserves spaces within arguments
- Expands to: `"$1" "$2" "$3" ...`

### $*
- Treats all arguments as single string
- Splits arguments on spaces
- Expands to: `"$1 $2 $3 ..."`

**Example Script:**
```bash
#!/bin/bash
echo "Script: $0"
echo "Total args: $#"
echo "Using \$@: $@"
echo "Using \$*: $*"

echo -e "\nProcessing with \$@:"
for arg in "$@"; do
    echo "  Argument: '$arg'"
done

echo -e "\nProcessing with \$*:"
for arg in $*; do
    echo "  Argument: '$arg'"
done
```

**Execution:**
```bash
./script.sh "hello world" "test file" single
```

**Output:**
```
Using $@: hello world test file single
Using $*: hello world test file single

Processing with $@:
  Argument: 'hello world'
  Argument: 'test file'  
  Argument: 'single'

Processing with $*:
  Argument: 'hello'
  Argument: 'world'
  Argument: 'test'
  Argument: 'file'
  Argument: 'single'
```

## Key Takeaways

1. **Shell Scripts** automate repetitive tasks
2. **Shebang** specifies the interpreter
3. **Loops** enable iteration and repetition
4. **Cron** schedules automated execution
5. **$@** preserves argument boundaries, **$*** doesn't

## Practical Applications

- System monitoring and reporting
- Log file management and cleanup
- Automated backups and maintenance
- DevOps CI/CD pipeline automation
- Server configuration and deployment