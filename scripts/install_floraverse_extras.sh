#!/usr/bin/env bash

# Floraverse Extras Installer
# Installs floraverse theme files to your ~/.config directory

set -e

# Default style
STYLE="${1:-main}"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
EXTRAS_DIR="$REPO_DIR/extras"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

echo -e "${BLUE}Floraverse Extras Installer${NC}"
echo -e "Installing style: ${GREEN}${STYLE}${NC}"
echo ""

# Validate style
if [[ ! "$STYLE" =~ ^(main|midnight|twilight|day|dawn)$ ]]; then
  echo -e "${YELLOW}Invalid style: $STYLE${NC}"
  echo "Valid styles: main, midnight, twilight, day, dawn"
  exit 1
fi

# Function to install a theme file
install_theme() {
  local app=$1
  local src_file=$2
  local dest_file=$3
  local create_backup=${4:-true}

  if [[ ! -f "$src_file" ]]; then
    echo -e "${YELLOW}⚠ Skipping $app: source file not found${NC}"
    return
  fi

  # Create destination directory if needed
  mkdir -p "$(dirname "$dest_file")"

  # Backup existing file
  if [[ -f "$dest_file" ]] && [[ "$create_backup" == "true" ]]; then
    cp "$dest_file" "${dest_file}.backup.$(date +%Y%m%d_%H%M%S)"
    echo -e "${YELLOW}  Backed up existing file${NC}"
  fi

  # Install the theme
  cp "$src_file" "$dest_file"
  echo -e "${GREEN}✓${NC} Installed $app theme to: $dest_file"
}

# Install btop theme
if [[ -d "$CONFIG_DIR/btop/themes" ]]; then
  install_theme "btop" \
    "$EXTRAS_DIR/btop/floraverse_${STYLE}.theme" \
    "$CONFIG_DIR/btop/themes/floraverse_${STYLE}.theme"
fi

# Install fish theme (function format)
if [[ -d "$CONFIG_DIR/fish/conf.d" ]]; then
  install_theme "fish" \
    "$EXTRAS_DIR/fish/floraverse_${STYLE}.fish" \
    "$CONFIG_DIR/fish/conf.d/floraverse_${STYLE}.fish"
fi

# Install ghostty theme
if [[ -d "$CONFIG_DIR/ghostty" ]]; then
  install_theme "ghostty" \
    "$EXTRAS_DIR/ghostty/floraverse_${STYLE}" \
    "$CONFIG_DIR/ghostty/themes/floraverse_${STYLE}"
fi

# Install lazygit theme
if [[ -d "$CONFIG_DIR/lazygit" ]]; then
  LAZYGIT_CONFIG="$CONFIG_DIR/lazygit/config.yml"
  echo -e "${BLUE}→${NC} For lazygit, you need to manually copy the theme config"
  echo -e "  Source: $EXTRAS_DIR/lazygit/floraverse_${STYLE}.yml"
  echo -e "  Merge into: $LAZYGIT_CONFIG"
fi

# Install tmux theme
if [[ -d "$CONFIG_DIR/tmux" ]]; then
  install_theme "tmux" \
    "$EXTRAS_DIR/tmux/floraverse_${STYLE}.tmux" \
    "$CONFIG_DIR/tmux/floraverse_${STYLE}.tmux"

  echo -e "${BLUE}→${NC} To activate tmux theme, add this to your ~/.tmux.conf:"
  echo -e "  ${YELLOW}source-file ~/.config/tmux/floraverse_${STYLE}.tmux${NC}"
fi

# Install eza theme
if command -v eza &> /dev/null; then
  EZA_DIR="$CONFIG_DIR/eza"
  mkdir -p "$EZA_DIR"
  install_theme "eza" \
    "$EXTRAS_DIR/eza/floraverse_${STYLE}.yml" \
    "$EZA_DIR/theme.yml"

  echo -e "${BLUE}→${NC} eza will automatically use: $EZA_DIR/theme.yml"
fi

echo ""
echo -e "${GREEN}Installation complete!${NC}"
echo ""
echo "Installed for style: ${STYLE}"
echo "To use a different style, run: $0 <style>"
echo "Available styles: main, midnight, twilight, day, dawn"
