# How to Deploy BromePatch Website to GitHub Pages

Follow these steps to deploy your website to GitHub Pages:

## Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com)
2. Click the "+" icon in the top right and select "New repository"
3. Name your repository (e.g., "bromepatch-website")
4. Make it public
5. Don't initialize with README (we already have one)
6. Click "Create repository"

## Step 2: Upload Files Using Terminal

1. Open Terminal and navigate to the website folder:
```bash
cd /tmp/bromepatch-website
```

2. Initialize git (if not already done):
```bash
git init
```

3. Add all files:
```bash
git add .
```

4. Commit the files:
```bash
git commit -m "Initial commit - BromePatch website"
```

5. Create a gh-pages branch:
```bash
git branch -M gh-pages
```

6. Add your repository as remote:
```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

7. Push to GitHub:
```bash
git push -u origin gh-pages
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on "Settings" tab
3. Scroll down to "Pages" section in the left sidebar
4. Under "Source", select "gh-pages" branch
5. Click "Save"

## Step 4: Access Your Website

Your website will be available at:
```
https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/
```

It may take a few minutes for GitHub to deploy your site.

## Updating Your Website

To update your website in the future:

1. Make your changes to the files
2. Add and commit the changes:
```bash
git add .
git commit -m "Update website"
```
3. Push to GitHub:
```bash
git push origin gh-pages
```

The website will automatically update within a few minutes.
