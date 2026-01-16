# Git Task 2 - Git & GitHub Fundamentals

## 📋 What I Did
✅ Configured Git with GitHub repository  
✅ Created files and made initial commits  
✅ Practiced branching and merging  
✅ Performed rollback using git reset  
✅ Documented all commands with screenshots

## 🔧 Git Configuration
```bash
remote.origin.url=https://github.com/monikaspawar/internship-project.git
branch.main.remote=origin
```

## 📝 Step-by-Step Task 2

### 1. Make Task 2 folder
```bash
mkdir task2-git
cd task2-git
```

### 2. Create files & first commit
```bash
echo "# Git Task 2" > README.md
echo "Learning Git fundamentals" > git-notes.txt

git add .
git commit -m "Task 2: Initial Git files"
git status
```

![Screenshot 1 - git status](images/image.png)

```bash
git log --oneline
```

![Screenshot 2 - git log](images/image%20copy.png)

### 3. Create branch & merge
```bash
git checkout -b feature-branch
git branch
```

![Screenshot 3 - git branch](images/image%20copy%202.png)

```bash
echo "Added Git branching practice" >> git-notes.txt
git add git-notes.txt
git commit -m "Feature: Add branching notes"

git checkout main
git merge feature-branch
```

![Screenshot 4 - git merge](images/image%20copy%203.png)

```bash
git push origin main
```

![Screenshot 5 - git push](images/image%20copy%204.png)

### 4. Practice rollback
```bash
echo "This is a mistake" >> README.md
git add README.md
git commit -m "commit"

git log --oneline  # Before reset
```

![Screenshot 6 - git reset](images/image%20copy%206.png)

```bash
git reset --hard HEAD~1  # Undo last commit
git log --oneline  # After reset
```

![Screenshot 7 - git log after reset](images/image%20copy%207.png)

```bash
cat README.md  # Verify rollback worked
```

## 🔑 Key Concepts Learned
- **.git folder**: Stores all commit history and Git metadata
- **git status**: Shows what's changed/staged
- **Branches**: Parallel code versions for feature development
- **git merge**: Combines branches together
- **git reset**: Undo commits and move HEAD pointer

## 📚 Commands Used
- `git init` - Initialize repository
- `git add .` - Stage all changes
- `git commit -m "message"` - Commit changes
- `git checkout -b branch-name` - Create and switch to new branch
- `git merge branch-name` - Merge branch into current branch
- `git reset --hard HEAD~1` - Undo last commit
- `git push origin main` - Push to remote repository
- `git log --oneline` - View commit history

## 📁 Files Created
- `README.md` - This documentation file
- `git-notes.txt` - Practice file for Git operations
- `git-task2-documentation.md` - Detailed documentation with screenshots

## 🎯 Learning Outcomes
1. Understanding Git workflow (add, commit, push)
2. Branch creation and merging
3. Rollback commits safely
4. Remote repository management
5. Git command-line proficiency

---

**Repository:** https://github.com/monikaspawar/internship-project.git  
**Task:** DevOps Internship - Task 2
