#!/usr/bin/env bash
# ============================================================
#  SUPERMAN — Deploy Script
#  Tis but a Flesh Wound · Isaac Lindell
#  GitHub user: Jamestfilmer-ops
# ============================================================
#
#  BEFORE YOU RUN THIS:
#  1. Install Git:        https://git-scm.com/downloads
#  2. Install GitHub CLI: https://cli.github.com  (brew install gh  OR  winget install GitHub.cli)
#  3. Install Vercel CLI: npm install -g vercel
#  4. Log in to GitHub:   gh auth login
#  5. Log in to Vercel:   vercel login
#
#  THEN from inside the SUPERMAN folder, run:
#     bash DEPLOY.sh
#
# ============================================================

set -e  # stop on first error

REPO_NAME="flesh-wound-blog"
GH_USER="Jamestfilmer-ops"

echo ""
echo "=================================================="
echo "  'Tis but a Flesh Wound — Deploy"
echo "=================================================="
echo ""

# ── Step 1: Initialise git ──────────────────────────────────
echo "→ Initialising git repo..."
git init
git add .
git commit -m "Initial build — 'Tis but a Flesh Wound"

# ── Step 2: Create GitHub repo and push ────────────────────
echo ""
echo "→ Creating GitHub repo: ${GH_USER}/${REPO_NAME}..."
gh repo create "${REPO_NAME}" \
  --public \
  --source=. \
  --remote=origin \
  --push \
  --description "'Tis but a Flesh Wound — An Blog by Isaac Lindell"

echo ""
echo "✓ Pushed to: https://github.com/${GH_USER}/${REPO_NAME}"

# ── Step 3: Deploy to Vercel ────────────────────────────────
echo ""
echo "→ Deploying to Vercel..."
vercel --yes \
  --name "${REPO_NAME}" \
  --prod

echo ""
echo "=================================================="
echo "  ✓ Done. Your site is live on Vercel."
echo "  Connect a custom domain in your Vercel dashboard."
echo "=================================================="
echo ""
