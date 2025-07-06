#!/usr/bin/env bash
VAULT="$HOME/Documents/The-Vault-Obsidian"   # ← adjust if different
cd "$VAULT" || exit 1

git pull --rebase --autostash
git add -A

if ! git diff --cached --quiet; then
  git commit -m "auto-sync: $(date '+%Y-%m-%d %H:%M')"
fi

git push

