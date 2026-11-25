#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.local/share/icons"
for theme in KDEclutter-Light KDEclutter-Dark; do
    rm -rf "$HOME/.local/share/icons/$theme"
    cp -r "$SCRIPT_DIR/icon-themes/$theme" "$HOME/.local/share/icons/$theme"
    echo "Installed: $HOME/.local/share/icons/$theme"
done

# Clear KDE icon caches
rm -f "$HOME/.cache/icon-cache.kcache" "$HOME/.cache/plasma_theme_"*.kcache

echo ""
echo "KDEclutter installed."
echo "Next steps:"
echo "  1. Open System Settings -> Colors & Themes -> Icons"
echo "  2. Select 'KDEclutter-Dark' or 'KDEclutter-Light' and click Apply."
echo "  3. If the tray does not update right away, reload Plasma:"
echo "     systemctl --user restart plasma-plasmashell"
