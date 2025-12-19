#!/bin/bash

# AlphaGuard IT - Improved Build Script
# Copies only necessary files to dist/ (no hidden folders like .git)

set -e

echo "🚀 Building AlphaGuard IT site..."
echo "   Date: $(date)"
echo ""

rm -rf dist
mkdir -p dist

# Copy only specific files (safe, no hidden dirs)
cp index.html dist/
cp README.md dist/ 2>/dev/null || true

# If you add images/CSS/JS later, add lines like:
# cp logo.png style.css dist/ 2>/dev/null || true

# Add timestamp
echo "" >> dist/index.html
echo "<!-- AlphaGuard IT - Built on $(date '+%Y-%m-%d %H:%M:%S') by build.sh -->" >> dist/index.html

echo "✅ Build complete! dist/ is clean."
ls -la dist/
