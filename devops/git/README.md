# Git

### How to Add Local Git Repo to GitHub Using SSH  
**Step 1.** Create repository in GitHub.   

**Step 2.** Set your local repository's remote origin using the command sentence below.   
```bash
git remote set-url origin git@github.com:cyberphor/demo.git
```

**Step 3.** Push the code you have locally to GitHub.  
```bash
git push origin main
```