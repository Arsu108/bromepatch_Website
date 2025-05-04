#!/bin/bash

# Script to deploy BromePatch website to GitHub Pages using SSH

echo "🚀 Starting deployment process with SSH..."

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

# Remove existing remote if it exists
git remote remove origin 2>/dev/null

# Use SSH URL
echo "🔗 Setting up remote repository with SSH..."
git remote add origin git@github.com:Arsu108/bromepatch-website.git

# Push to GitHub
echo "⬆️ Pushing to GitHub..."
git push -u origin gh-pages

echo "✅ Deployment complete!"
echo "🌐 Your website should be available at: https://arsu108.github.io/bromepatch-website/"
echo "Please enable GitHub Pages in your repository settings if not already enabled."
echo "Go to Settings > Pages > Branch: select 'gh-pages' and save."
