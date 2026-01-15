# Linux Assignment Documentation

## Student Information
- **Name:** [Your Name]
- **Date:** [Current Date]
- **Environment:** WSL Ubuntu on Windows

---

## 1. Installation and Login

### Installation Steps
```bash
# Command used to install WSL (run in PowerShell as Admin)
wsl --install
```

### Verification
```bash
# Check WSL version
wsl --version

# Check Ubuntu version
lsb_release -a
```

**Output:**
```
[Paste your output here]
```

**Screenshot/Notes:** Successfully logged into Ubuntu terminal via WSL.

---

## 2. Directory Structure Exploration

### Understanding Current Location
```bash
# Print working directory
pwd
```

**Output:**
```
[Paste output - typically /home/username]
```

### Listing Directory Contents
```bash
# List files in current directory
ls

# List with details
ls -l

# List including hidden files
ls -la
```

**Output:**
```
[Paste your output here]
```

### Navigating Directories
```bash
# Go to root directory
cd /
pwd
ls

# Go back to home directory
cd ~
pwd

# Alternative to go home
cd
pwd

# Go to parent directory
cd ..
pwd
```

**Output:**
```
[Paste your navigation outputs here]
```

### Understanding Root vs Home
- **Root Directory (/)**: The top-level directory of the entire filesystem. Contains system directories like /bin, /etc, /home, /var
- **Home Directory (~)**: Your personal user directory, typically /home/username. This is where your personal files are stored.

```bash
# View root directory structure
ls /

# View home directory
ls ~
```

**Output:**
```
[Paste outputs showing difference between / and ~]
```

---

## 3. Creating and Removing Directories and Files

### Creating Directories
```bash
# Create a single directory
mkdir test_directory

# Create multiple directories
mkdir dir1 dir2 dir3

# Create nested directories
mkdir -p parent/child/grandchild

# Verify creation
ls -l
```

**Output:**
```
[Paste your output here]
```

### Creating Files
```bash
# Create empty files
touch file1.txt
touch file2.txt file3.txt

# Create file in specific directory
touch test_directory/sample.txt

# Verify creation
ls -l
ls -l test_directory/
```

**Output:**
```
[Paste your output here]
```

### Removing Files
```bash
# Remove a single file
rm file1.txt

# Remove multiple files
rm file2.txt file3.txt

# Remove with confirmation prompt (safer)
rm -i test_directory/sample.txt

# Verify removal
ls -l
```

**Output:**
```
[Paste your output here]
```

### Removing Directories
```bash
# Remove empty directory
rmdir dir1

# Remove directory with contents (use carefully!)
rm -r dir2

# Remove with confirmation
rm -ri dir3

# Remove nested directories
rm -r parent/

# Verify removal
ls -l
```

**Output:**
```
[Paste your output here]
```

**Safety Notes:**
- Always double-check before using `rm -r`
- Use `rm -i` for interactive confirmation
- Never run `rm -rf /` (destroys system)

---

## 4. File Viewing and Editing

### Creating Sample Content
```bash
# Create a test file with content
echo "This is line 1" > sample.txt
echo "This is line 2" >> sample.txt
echo "This is line 3" >> sample.txt
```

### Viewing Files with cat
```bash
# Display entire file content
cat sample.txt

# Display with line numbers
cat -n sample.txt

# Concatenate multiple files
cat sample.txt sample.txt > combined.txt
cat combined.txt
```

**Output:**
```
[Paste your output here]
```

### Viewing Files with less
```bash
# View file with pagination (useful for large files)
less sample.txt

# Navigation in less:
# - Space: next page
# - b: previous page
# - q: quit
# - /search_term: search
```

**Notes:** [Describe your experience using less]

### Editing with nano
```bash
# Open file in nano editor
nano sample.txt

# Basic nano commands:
# - Ctrl+O: Save (Write Out)
# - Ctrl+X: Exit
# - Ctrl+K: Cut line
# - Ctrl+U: Paste
# - Ctrl+W: Search
```

**Changes Made:**
```
[Describe what you edited in nano]
```

### Editing with vim (Optional)
```bash
# Open file in vim
vim sample.txt

# Basic vim commands:
# - i: Enter insert mode
# - Esc: Exit insert mode
# - :w: Save
# - :q: Quit
# - :wq: Save and quit
# - :q!: Quit without saving
```

**Changes Made:**
```
[Describe what you edited in vim]
```

---

## 5. File Permissions

### Understanding Permissions
```bash
# List files with detailed permissions
ls -l

# Create test files for permission practice
touch perm_test.txt
mkdir perm_dir
```

**Output:**
```
[Paste output showing permission format: -rwxrwxrwx]
```

### Permission Format Explanation
- **Format:** `-rwxrwxrwx`
  - Position 1: File type (- = file, d = directory)
  - Positions 2-4: Owner permissions (rwx)
  - Positions 5-7: Group permissions (rwx)
  - Positions 8-10: Others permissions (rwx)
- **Letters:**
  - r = read (4)
  - w = write (2)
  - x = execute (1)

### Modifying Permissions with chmod
```bash
# Numeric method
chmod 755 perm_test.txt  # rwxr-xr-x
ls -l perm_test.txt

chmod 644 perm_test.txt  # rw-r--r--
ls -l perm_test.txt

# Symbolic method
chmod u+x perm_test.txt  # Add execute for user
ls -l perm_test.txt

chmod g-w perm_test.txt  # Remove write for group
ls -l perm_test.txt

chmod o+r perm_test.txt  # Add read for others
ls -l perm_test.txt

# Apply to directory
chmod 755 perm_dir
ls -ld perm_dir
```

**Output:**
```
[Paste outputs showing permission changes]
```

### Changing Ownership with chown
```bash
# View current ownership
ls -l perm_test.txt

# Change owner (requires sudo)
sudo chown root perm_test.txt
ls -l perm_test.txt

# Change back to your user
sudo chown $USER perm_test.txt
ls -l perm_test.txt

# Change owner and group
sudo chown $USER:$USER perm_test.txt
ls -l perm_test.txt
```

**Output:**
```
[Paste outputs showing ownership changes]
```

---

## 6. System Monitoring

### Process Monitoring with top
```bash
# View real-time system processes
top

# Key information in top:
# - PID: Process ID
# - USER: Process owner
# - %CPU: CPU usage
# - %MEM: Memory usage
# - COMMAND: Process name

# Press 'q' to quit
```

**Observations:**
```
[Note top processes, CPU usage, memory usage]
```

### Enhanced Process Monitoring with htop
```bash
# Install htop if not available
sudo apt update
sudo apt install htop -y

# Run htop
htop

# htop features:
# - Color-coded display
# - Mouse support
# - F9: Kill process
# - F10: Quit
```

**Observations:**
```
[Compare htop vs top, note any interesting processes]
```

### Disk Usage with df
```bash
# Display disk space usage
df -h

# Explanation:
# -h: Human-readable format (GB, MB)
# Shows: Filesystem, Size, Used, Available, Use%, Mounted on
```

**Output:**
```
[Paste your df -h output]
```

**Analysis:**
```
Total disk space: [X GB]
Used space: [X GB]
Available space: [X GB]
```

### Memory Usage with free
```bash
# Display memory usage
free -m

# Explanation:
# -m: Display in megabytes
# Shows: Total, Used, Free, Shared, Buff/Cache, Available
```

**Output:**
```
[Paste your free -m output]
```

**Analysis:**
```
Total RAM: [X MB]
Used RAM: [X MB]
Free RAM: [X MB]
Available RAM: [X MB]
```

### Additional Monitoring Commands
```bash
# Check system uptime
uptime

# View logged-in users
who

# Display system information
uname -a

# Check CPU information
lscpu

# View memory information
cat /proc/meminfo | head -n 5
```

**Output:**
```
[Paste outputs from additional commands]
```

---

## 7. Summary and Key Learnings

### Commands Mastered
1. **Navigation:** pwd, ls, cd
2. **File Operations:** mkdir, touch, rm, rmdir
3. **File Viewing:** cat, less
4. **File Editing:** nano, vim
5. **Permissions:** chmod, chown, ls -l
6. **Monitoring:** top, htop, df, free

### Important Concepts Learned
- Root directory (/) vs Home directory (~)
- File permission structure (rwx)
- Numeric vs symbolic permission notation
- Safe file deletion practices
- System resource monitoring

### Challenges Faced
```
[Describe any difficulties and how you overcame them]
```

### Additional Practice Exercises Completed
```
[List any extra commands or experiments you tried]
```

---

## Appendix: Quick Reference

### Essential Commands Cheat Sheet
```bash
# Navigation
pwd                    # Print working directory
ls -la                 # List all files with details
cd /path/to/dir        # Change directory
cd ~                   # Go to home
cd ..                  # Go up one level

# File Operations
mkdir dirname          # Create directory
touch filename         # Create file
rm filename            # Remove file
rm -r dirname          # Remove directory
cp source dest         # Copy
mv source dest         # Move/rename

# Viewing Files
cat file               # Display file
less file              # Page through file
head file              # First 10 lines
tail file              # Last 10 lines

# Permissions
chmod 755 file         # Change permissions
chown user:group file  # Change ownership
ls -l                  # View permissions

# System Monitoring
top                    # Process monitor
htop                   # Enhanced process monitor
df -h                  # Disk usage
free -m                # Memory usage
ps aux                 # All processes

# Help
man command            # Manual for command
command --help         # Quick help
```

---

## Conclusion

This assignment provided hands-on experience with fundamental Linux commands and concepts. The skills learned are essential for system administration, development, and DevOps work.

**Date Completed:** [Date]
**Total Time Spent:** [Hours]
