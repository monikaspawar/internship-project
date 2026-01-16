# Git Task 2

Learning Git fundamentals

Current status ✅:


remote.origin.url=https://github.com/monikaspawar/internship-project.git  ← Perfect!
branch.main.remote=origin  
Step-by-Step Task 2 :
1. Make Task 2 folder 
mkdir task2-git
cd task2-git
2. Create files & first commit 
bash
echo "# Git Task 2" > README.md
echo "Learning Git fundamentals" > git-notes.txt

git add .
git commit -m "Task 2: Initial Git files"
git status  

![Screenshot 1](images/image.png)

git log --oneline  

![Screenshot 2](images/image%20copy.png)

3. Create branch & merge 

git checkout -b feature-branch
git branch
![Screenshot 3](images/image%20copy%202.png)
echo "Added Git branching practice" >> git-notes.txt
git add git-notes.txt
git commit -m "Feature: Add branching notes"

git checkout main

git merge feature-branch
![Screenshot 4](images/image%20copy%203.png)
git push origin main  
![alt text](image.png)

4. Practice rollback 
echo "This is a mistake" >> README.md
git add README.md
git commit -m "commit"

git log --oneline  
![alt text](image-1.png)
git reset --hard HEAD~1  # Undo last commit
git log --oneline  # Screenshot AFTER
cat README.md  # Verify rollback worked
5. Create documentation 
vi git-task2-documentation.md



# Task 2: Git & GitHub Fundamentals

## 1. Git Config ✅
$ git config --list
remote.origin.url=https://github.com/monikaspawar/internship-project.git

## 2. Commands Executed
$ git init
$ git add .
$ git commit -m "Initial commit"
$ git checkout -b feature-branch
$ git merge feature-branch
$ git reset --hard HEAD~1

text

## 3. Key Concepts
- **.git folder**: Stores all commit history
- **git status**: Shows what's changed/staged  
- **Branches**: Parallel code versions
- **git reset**: Undo commits


6. Final push
bash
git add git-task2-documentation.md task2-git/
git commit -m "Complete Task 2: Git fundamentals with documentation"
git push origin main
Your Repo Structure Now:
text
internship-project/
├── linux-task1/           ← Task 1 ✅
├── task2-git/             ← Task 2 ✅
├── git-task2-documentation.md
└── README.md
Update README.md:
text
# DevOps Internship Project

## Completed Tasks
✅ **Task 1**: Linux setup & commands  
✅ **Task 2**: Git/GitHub fundamentals (branching, reset)

[Task 2 Documentation](git-task2-documentation.md)
