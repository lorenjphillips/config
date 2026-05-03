#!/bin/bash
set -e

echo "Ghostty config setup"
echo "===================="

if ! command -v ghostty &>/dev/null && [ ! -d /Applications/Ghostty.app ]; then
  echo "Ghostty not found — download from https://ghostty.org"
  exit 1
fi

mkdir -p ~/.config/ghostty
cp "$(dirname "$0")/config" ~/.config/ghostty/config

echo "Done. Restart Ghostty to activate the global hotkey (ctrl+option+w → new window)."
