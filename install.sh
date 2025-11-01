#!/bin/bash

# A script to install the neovim configuration
#
# Flags:
#   -i : Run in interactive mode (shows nvim UI during plugin sync).

# --- Configuration ---

# Exit immediately if a command exits with a non-zero status.
set -e
# Treat unset variables as an error.
set -u
# Cause pipeline to fail on first error.
set -o pipefail

# Find the directory this script is in
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Define target Neovim config directory
NVIM_CONFIG_DIR="$HOME/.config/nvim"

# --- Pre-flight Checks ---

if ! command -v nvim &> /dev/null; then
    echo "Error: Neovim (nvim) is not installed or not in your PATH."
    echo "Please install Neovim first."
    exit 1
fi

echo "Running Neovim configuration install script..."
echo "Config source directory: $SCRIPT_DIR"
echo "Config target directory: $NVIM_CONFIG_DIR"

# --- Handle Flags ---

# Default to headless mode for a script
nvim_flags="--headless"
if [ "${1:-}" = "-i" ]; then
    echo "Running in interactive mode..."
    nvim_flags=""
elif [ "${1:-}" != "" ]; then
    echo "Unknown flag: $1"
    echo "Usage: $0 [-i]"
    exit 1
fi

# --- Cleanup Old Config ---

echo "Creating config directory: $NVIM_CONFIG_DIR"
mkdir -p "$NVIM_CONFIG_DIR"

echo "Cleaning up old vim-plug or init.vim files..."
rm -f "$NVIM_CONFIG_DIR/autoload/plug.vim"
rm -f "$NVIM_CONFIG_DIR/init.vim"

# --- Install New Config ---

echo "Copying new configuration..."

# Copy the main init.lua
cp -f "$SCRIPT_DIR/init.lua" "$NVIM_CONFIG_DIR/init.lua"

# Copy the *entire* lua directory recursively
# This is more robust than copying file-by-file
if [ -d "$SCRIPT_DIR/lua" ]; then
    # -R = recursive, -f = force (overwrite)
    cp -R -f "$SCRIPT_DIR/lua" "$NVIM_CONFIG_DIR/"
else
    echo "Warning: 'lua' directory not found in $SCRIPT_DIR."
    echo "LSP, plugins, and core settings may be missing."
fi

# --- Sync Plugins ---

echo "Syncing plugins with lazy.nvim..."
# We use two separate '+' flags to run commands in sequence.
nvim $nvim_flags "+Lazy sync" "+qall"

echo ""
echo "-----------------------------------"
echo "Neovim configuration complete."
echo "You can now start Neovim."
echo "-----------------------------------"
