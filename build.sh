#!/bin/bash

# 1. Run a one-time production build of Tailwind (Minified)
echo "Building professional CSS..."
npx @tailwindcss/cli -i ./src/input.css -o ./style.css --minify

# 2. Add all changes to Git
echo "Staging files..."
git add .

# 3. Commit with a timestamp
timestamp=$(date +'%Y-%m-%d %H:%M:%S')
echo "Committing changes..."
git commit -m "AlphaGuard Update: $timestamp"

# 4. Push to GitHub
echo "Pushing to GitHub..."
git push origin main

echo "Success! AlphaGuard IT is now live."