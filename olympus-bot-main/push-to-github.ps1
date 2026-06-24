# Git push script for Vanta Bot
$repoPath = "c:\Users\tenzi\Documents\Projects\olympus-bot-main\olympus-bot-main"
Set-Location $repoPath

# Initialize git repository
git init

# Configure git
git config user.name "Vanta Bot"
git config user.email "bot@vantadev.com"

# Stage all changes
git add .

# Create commit
git commit -m "Rebrand to Vanta and setup for Render deployment"

# Add remote
git remote add origin https://github.com/roninvolt/vanta-bot.git

# Rename branch to main
git branch -M main

# Push to GitHub
git push -u origin main

Write-Host "Push complete!"
