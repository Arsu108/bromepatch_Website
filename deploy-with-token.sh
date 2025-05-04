#!/bin/bash

# Script to deploy BromePatch website to GitHub Pages using Personal Access Token

echo "🚀 Starting deployment process with Personal Access Token..."

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

# Get GitHub username and token
echo "Please enter your GitHub username:"
read GITHUB_USERNAME

echo "Please enter your Personal Access Token:"
read -s GITHUB_TOKEN

echo # Add a newline after the hidden input

# Set up remote with token authentication
echo "🔗 Setting up remote repository with token authentication..."
git remote add origin https://${GITHUB_TOKEN}@github.com/${GITHUB_USERNAME}/bromepatch-website.git

# Push to GitHub
echo "⬆️ Pushing to GitHub..."
git push -u origin gh-pages

echo "✅ Deployment complete!"
echo "🌐 Your website should be available at: https://${GITHUB_USERNAME}.github.io/bromepatch-website/"
echo "Please enable GitHub Pages in your repository settings if not already enabled."
echo "Go to Settings > Pages > Branch: select 'gh-pages' and save."
