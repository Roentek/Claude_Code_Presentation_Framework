#!/usr/bin/env bash
# Install Obsidian desktop app. Idempotent.
set -euo pipefail
source "$(dirname "$0")/lib.sh"

echo "=== Step: Obsidian ==="

if _is_windows; then
  if [ -d "$LOCALAPPDATA/Programs/Obsidian" ] || [ -d "$LOCALAPPDATA/Obsidian" ]; then
    echo "  [skip] Obsidian already installed (found $LOCALAPPDATA/Programs/Obsidian)"
  else
    echo "  Installing Obsidian via winget..."
    winget install Obsidian.Obsidian --silent --accept-package-agreements --accept-source-agreements 2>/dev/null || {
      # winget exits non-zero when the package is already installed with no
      # upgrade available — check the actual install dir before warning.
      if [ -d "$LOCALAPPDATA/Programs/Obsidian" ]; then
        echo "  [skip] Obsidian already installed (winget reported no upgrade needed)"
      else
        echo "  [warn] winget install failed. Install manually: https://obsidian.md/download"
      fi
    }
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  if [ -d "/Applications/Obsidian.app" ]; then
    echo "  [skip] Obsidian already installed"
  else
    echo "  Installing Obsidian via brew..."
    brew install --cask obsidian 2>/dev/null || {
      echo "  [warn] brew install failed. Install manually: https://obsidian.md/download"
    }
  fi
else
  # Linux
  if flatpak list 2>/dev/null | grep -q "md.obsidian.Obsidian"; then
    echo "  [skip] Obsidian already installed (flatpak)"
  elif which obsidian 2>/dev/null; then
    echo "  [skip] Obsidian found in PATH"
  else
    echo "  Installing Obsidian via flatpak..."
    if which flatpak 2>/dev/null; then
      flatpak install flathub md.obsidian.Obsidian -y 2>/dev/null || {
        echo "  [warn] flatpak install failed. Install manually: https://obsidian.md/download"
      }
    else
      echo "  [warn] flatpak not found. Install manually: https://obsidian.md/download"
    fi
  fi
fi

echo "  After installing: Obsidian > Manage Vaults > Open Folder as Vault > select ./vault"
echo "  Then: Settings > Appearance > CSS Snippets > toggle on 'vault-colors'"
