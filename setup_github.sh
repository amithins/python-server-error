#!/bin/bash

# Setup script for creating GitHub repository and pushing code
# This script helps you create a GitHub repository and push your local code

echo "🚀 Setting up GitHub repository for Python Sample Server"
echo "=================================================="

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "Please install it first:"
    echo "  macOS: brew install gh"
    echo "  Or download from: https://cli.github.com/"
    echo ""
    echo "Alternatively, you can create the repository manually on GitHub.com"
    echo "and then run: git remote add origin <your-repo-url>"
    exit 1
fi

# Check if user is authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ Not authenticated with GitHub CLI."
    echo "Please run: gh auth login"
    exit 1
fi

# Get repository name
read -p "Enter GitHub repository name (e.g., python-sample-server): " repo_name

# Create the repository
echo "📦 Creating GitHub repository: $repo_name"
gh repo create "$repo_name" --public --description "Python Flask server with intentional error for PR testing" --source=. --remote=origin --push

if [ $? -eq 0 ]; then
    echo "✅ Repository created and code pushed successfully!"
    echo "🌐 Your repository is available at: https://github.com/$(gh api user --jq .login)/$repo_name"
else
    echo "❌ Failed to create repository. You can create it manually:"
    echo "1. Go to https://github.com/new"
    echo "2. Create repository: $repo_name"
    echo "3. Run: git remote add origin https://github.com/YOUR_USERNAME/$repo_name.git"
    echo "4. Run: git push -u origin main"
fi

echo ""
echo "🎉 Repository setup complete!"
echo "You can now:"
echo "1. Create branches for fixes"
echo "2. Submit pull requests"
echo "3. Test the error and fix workflow" 