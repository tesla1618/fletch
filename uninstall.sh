#!/bin/bash

TARGET_FILE="/usr/local/bin/fletch"
SHARE_DIR="/usr/local/share/fletch"

echo "Removing fletch..."

# Remove main executable
if [ -f "$TARGET_FILE" ]; then
  sudo rm "$TARGET_FILE"
  echo "✅ fletch executable removed"
else
  echo "❌ fletch executable not found at $TARGET_FILE"
fi

# Remove share directory
if [ -d "$SHARE_DIR" ]; then
  sudo rm -rf "$SHARE_DIR"
  echo "✅ fletch data files removed"
else
  echo "❌ fletch data directory not found at $SHARE_DIR"
fi

echo ""
echo "Note: User config files at ~/.config/fletch/ are preserved."
echo "To remove them manually, run: rm -rf ~/.config/fletch/"
