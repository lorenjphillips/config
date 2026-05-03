#!/bin/bash
set -e

DIR="$(dirname "$0")"

echo "Setting up dotfiles..."
echo ""

echo "==> VS Code (Islands Dark theme + fonts)"
bash "$DIR/vscode/install.sh"

echo ""
echo "==> Ghostty (config + ctrl+option+w global hotkey)"
bash "$DIR/ghostty/install.sh"

echo ""
echo "==> Hammerspoon (Warp fallback hotkey)"
bash "$DIR/hammerspoon/install.sh"

echo ""
echo "All done."
