#!/bin/bash

# Script to push We Build AI Agents website to GitHub
# Repository: https://github.com/marisha-mv/webuildaiagents

echo "🚀 Pushing We Build AI Agents to GitHub..."

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    git branch -M main
fi

# Add remote (if not already added)
git remote remove origin 2>/dev/null
git remote add origin https://github.com/marisha-mv/webuildaiagents.git

# Add all files
git add .

# Commit if there are changes
if ! git diff-index --quiet HEAD --; then
    git commit -m "Initial commit - We Build AI Agents brand showcase"
fi

# Push to GitHub
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Next steps:"
    echo "1. Go to https://github.com/marisha-mv/webuildaiagents/settings/pages"
    echo "2. Enable GitHub Pages (select 'main' branch and '/ (root)' folder)"
    echo "3. Add your custom domain if needed"
    echo "4. Configure DNS with your domain registrar"
    echo ""
    echo "See DEPLOYMENT.md for detailed instructions."
else
    echo "❌ Failed to push. Make sure:"
    echo "   - The repository exists at https://github.com/marisha-mv/webuildaiagents"
    echo "   - You're authenticated with GitHub"
    echo "   - The repository name matches exactly: webuildaiagents"
fi

