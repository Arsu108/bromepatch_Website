# Setting up SSH Keys for GitHub

## Step 1: Check for existing SSH keys

```bash
ls -al ~/.ssh
```

Look for files named `id_rsa.pub` or `id_ed25519.pub`

## Step 2: Generate a new SSH key (if needed)

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

When prompted, press Enter to accept the default file location.

## Step 3: Start the SSH agent

```bash
eval "$(ssh-agent -s)"
```

## Step 4: Add your SSH key to the SSH agent

```bash
ssh-add ~/.ssh/id_ed25519
```

## Step 5: Copy your SSH public key

```bash
pbcopy < ~/.ssh/id_ed25519.pub
```

## Step 6: Add the SSH key to GitHub

1. Go to GitHub.com and sign in
2. Click your profile picture → Settings
3. Click "SSH and GPG keys" in the left sidebar
4. Click "New SSH key"
5. Give your key a title (e.g., "MacBook Pro")
6. Paste your key into the "Key" field
7. Click "Add SSH key"

## Step 7: Test your SSH connection

```bash
ssh -T git@github.com
```

## Step 8: Use SSH URL for your repository

```bash
git remote set-url origin git@github.com:Arsu108/bromepatch-website.git
```

Then push your code:

```bash
git push -u origin gh-pages
```
