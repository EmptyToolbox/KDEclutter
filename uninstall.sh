#!/usr/bin/env bash
set -euo pipefail

rm -rf "$HOME/.local/share/icons/KDEclutter-Light" "$HOME/.local/share/icons/KDEclutter-Dark"
rm -f "$HOME/.cache/icon-cache.kcache" "$HOME/.cache/plasma_theme_"*.kcache

echo "Removed KDEclutter-Light and KDEclutter-Dark."
echo "Switch back to Breeze in System Settings -> Colors & Themes -> Icons, then run:"
echo "  systemctl --user restart plasma-plasmashell"
