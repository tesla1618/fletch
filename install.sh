#!/bin/bash

# Installer for fletch 🐧✨

TARGET_DIR="/usr/local/bin"
TARGET_FILE="$TARGET_DIR/fletch"
SHARE_DIR="/usr/local/share/fletch"

echo "Installing fletch..."

# Create share directory
sudo mkdir -p "$SHARE_DIR"

# Copy main script
sudo cp fletch "$TARGET_FILE"
sudo chmod +x "$TARGET_FILE"

# Copy ASCII art files
sudo cp -r ascii "$SHARE_DIR/"

# Copy theme files
sudo cp -r themes "$SHARE_DIR/"

# Copy config files
sudo cp -r config "$SHARE_DIR/"

# Update the script to use the correct paths
sudo sed -i "s|SCRIPT_DIR=\"\$(cd \"\$(dirname \"\${BASH_SOURCE\[0\]}\")\" && pwd)\"|SCRIPT_DIR=\"$SHARE_DIR\"|" "$TARGET_FILE"

echo "✅ Done! You can now run it by typing: fletch"
echo ""
echo "Available commands:"
echo "  fletch                    - Default output"
echo "  fletch --help             - Show help"
echo "  fletch --list-ascii       - List ASCII arts"
echo "  fletch --list-themes      - List themes"
echo "  fletch -a tux -t nord     - Custom ASCII and theme"
echo ""
echo "Config file will be created at: ~/.config/fletch/fletch.conf"
