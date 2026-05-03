#!/bin/bash
set -e

echo "Hammerspoon — Warp global hotkey setup"
echo "======================================="

brew install --cask hammerspoon

mkdir -p ~/.hammerspoon
cp "$(dirname "$0")/init.lua" ~/.hammerspoon/init.lua

open -a Hammerspoon

echo ""
echo "Done. Two manual steps required:"
echo "  1. Grant Accessibility permission when macOS prompts (System Settings → Privacy → Accessibility)"
echo "  2. Set Warp to All Desktops: right-click Warp in Dock → Options → All Desktops"
echo ""
echo "Hotkey: cmd+shift+return → new Warp window in current space"
