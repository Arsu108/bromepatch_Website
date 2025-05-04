#!/bin/bash

# Script to deploy BromePatch website to GitHub Pages

echo "🚀 Starting deployment process..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing git repository..."
    git init
fi

# Add all files
echo "📝 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Initial commit - BromePatch website"

# Create gh-pages branch
echo "🌿 Creating gh-pages branch..."
git branch -M gh-pages

# Set up remote (you'll need to replace with your repository URL)
echo "🔗 Setting up remote repository..."
echo "Please enter your GitHub repository URL (e.g., https://github.com/username/repo-name.git):"
read REPO_URL

git remote add origin $REPO_URL

# Push to GitHub
echo "⬆️ Pushing to GitHub..."
git push -u origin gh-pages

echo "✅ Deployment complete!"
echo "🌐 Your website should be available at: https://[your-username].github.io/[repo-name]/"
echo "Please enable GitHub Pages in your repository settings if not already enabled."
echo "Go to Settings > Pages > Branch: select 'gh-pages' and save."
