#!/bin/bash

echo "This script will help you move your files to the GitHub Desktop repository"
echo "Please enter the path where GitHub Desktop created your repository"
echo "(Usually something like /Users/arslan/Documents/GitHub/bromepatch-website)"
echo "Enter the path:"
read REPO_PATH

# Copy all files to the new repository
cp -r /Users/arslan/Desktop/bromepatch-website/* "$REPO_PATH/"

echo "Files moved successfully!"
echo "Now go back to GitHub Desktop to continue..."
