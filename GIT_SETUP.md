# Git Repository Setup Guide

This guide will help you set up your Python Sample Server as a proper Git repository and push it to GitHub.

## 🚀 Quick Setup (Automated)

### Option 1: Using GitHub CLI (Recommended)

1. **Install GitHub CLI** (if not already installed):
   ```bash
   # macOS
   brew install gh
   
   # Or download from: https://cli.github.com/
   ```

2. **Authenticate with GitHub**:
   ```bash
   gh auth login
   ```

3. **Run the setup script**:
   ```bash
   ./setup_github.sh
   ```

### Option 2: Manual Setup

1. **Create repository on GitHub**:
   - Go to https://github.com/new
   - Repository name: `python-sample-server` (or your preferred name)
   - Make it public
   - Don't initialize with README (we already have one)

2. **Add remote and push**:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/python-sample-server.git
   git push -u origin main
   ```

## 📋 Current Git Status

Your local repository is already set up with:
- ✅ Git initialized
- ✅ All files committed
- ✅ Main branch created
- ✅ Initial commit with all project files

## 🔧 Repository Structure

```
python-sample-server/
├── .git/                    # Git repository data
├── app.py                   # Main Flask application
├── requirements.txt         # Python dependencies
├── README.md               # Project documentation
├── .gitignore              # Git ignore patterns
├── test_server.py          # Test script
├── fix_error_example.py    # Error fix examples
├── demo_fix.py             # Interactive fix demo
├── PROJECT_SUMMARY.md      # Project overview
├── setup_github.sh         # GitHub setup script
└── GIT_SETUP.md           # This file
```

## 🎯 Next Steps After Repository Setup

### 1. Test the Error Workflow

```bash
# Start the server
python3 app.py

# In another terminal, test the error
curl -X POST http://localhost:5000/error/enable
curl http://localhost:5000/trigger-error
```

### 2. Create a Fix Branch

```bash
# Create a new branch for the fix
git checkout -b fix/trigger-error

# Make the fix (edit app.py)
# Replace: result = undefined_variable + "This should cause an error"
# With: result = "Error triggered successfully" + " - This was the intentional error"

# Commit the fix
git add app.py
git commit -m "Fix NameError in trigger_error function"

# Push the branch
git push origin fix/trigger-error
```

### 3. Create a Pull Request

1. Go to your GitHub repository
2. Click "Compare & pull request" for the `fix/trigger-error` branch
3. Add description explaining the fix
4. Submit the PR

### 4. Test the Fix

```bash
# After merging the PR, test the fix
python3 test_server.py
```

## 🔍 Useful Git Commands

### View Repository Status
```bash
git status
git log --oneline
```

### Create and Switch Branches
```bash
git checkout -b feature/new-feature
git checkout main
```

### Push and Pull
```bash
git push origin main
git pull origin main
```

### View Remote Configuration
```bash
git remote -v
```

## 🛠️ Repository Configuration

### Git Configuration (Optional)
```bash
# Set your name and email
git config user.name "Your Name"
git config user.email "your.email@example.com"

# Set default branch name
git config --global init.defaultBranch main
```

### Branch Protection (GitHub Settings)
1. Go to repository Settings → Branches
2. Add rule for `main` branch
3. Enable:
   - Require pull request reviews
   - Require status checks to pass
   - Include administrators

## 📊 Repository Features

### ✅ What's Included
- Complete Flask application with intentional error
- Comprehensive documentation
- Test scripts and examples
- Proper .gitignore for Python projects
- Setup scripts for easy deployment

### 🎯 Perfect for Testing
- **PR Workflows**: Create branches, fix errors, submit PRs
- **Error Handling**: Test 500 error responses
- **CI/CD**: Test automated testing and deployment
- **Code Review**: Practice review processes

## 🚨 Troubleshooting

### Common Issues

1. **GitHub CLI not installed**:
   ```bash
   brew install gh
   ```

2. **Not authenticated**:
   ```bash
   gh auth login
   ```

3. **Repository already exists**:
   - Delete the remote repository on GitHub
   - Or use a different name

4. **Push rejected**:
   ```bash
   git pull origin main --rebase
   git push origin main
   ```

### Getting Help

- **Git Documentation**: https://git-scm.com/doc
- **GitHub CLI**: https://cli.github.com/
- **GitHub Guides**: https://guides.github.com/

## 🎉 Success Checklist

- [ ] Git repository initialized
- [ ] All files committed
- [ ] GitHub repository created
- [ ] Code pushed to GitHub
- [ ] Error workflow tested
- [ ] Fix branch created
- [ ] Pull request submitted
- [ ] Fix tested and merged

---

**🎯 Your repository is now ready for testing PR workflows and error handling scenarios!** 