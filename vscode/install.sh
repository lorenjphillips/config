#!/bin/bash
set -e

echo "VS Code — Islands Dark setup"
echo "============================"

# 1. Fonts
echo "Installing fonts via Homebrew..."
brew install --cask font-ibm-plex-mono font-fira-code-nerd-font

# 2. Islands Dark theme + Custom UI Style extension + Bear Sans UI fonts
echo "Installing Islands Dark theme..."
git clone https://github.com/bwya77/vscode-dark-islands.git /tmp/islands-dark
bash /tmp/islands-dark/install.sh
rm -rf /tmp/islands-dark

# 3. Apply settings (overrides the defaults from the Islands Dark installer
#    with our version that includes the macOS high-contrast focus ring fixes)
SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
cp "$(dirname "$0")/settings.json" "$SETTINGS_DIR/settings.json"
echo "Settings applied."

# 4. Reload
code --reload-window 2>/dev/null || true

echo ""
echo "Done. In VS Code run: Custom UI Style: Reload Custom CSS and JS"
echo "If prompted about a corrupt installation, click the gear -> Don't Show Again."
