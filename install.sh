#!/bin/bash

# A script to install the neovim configuration

echo "Running install script..."

# Find the directory this script is in
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
echo "Config directory found at: $SCRIPT_DIR"

# Handle silent flag
if [ "$1" = "-s" ]; then
    echo "Running in silent mode..."
    silent="--headless"
else
    silent=""
fi

# Create the new config structure
echo "Creating config directories..."
mkdir -p "$HOME/.config/nvim/lua/core"
mkdir -p "$HOME/.config/nvim/lua/plugins"

# Clean up old vim-plug files if they exist
if [ -f "$HOME/.config/nvim/autoload/plug.vim" ]; then
    echo "Removing old vim-plug file..."
    rm -f "$HOME/.config/nvim/autoload/plug.vim"
fi
if [ -f "$HOME/.config/nvim/init.vim" ]; then
    echo "Removing old init.vim..."
    rm -f "$HOME/.config/nvim/init.vim"
fi

# Copy all new files
echo "Copying new Lua configuration..."
cp -f "$SCRIPT_DIR/init.lua" "$HOME/.config/nvim/init.lua"
cp -f "$SCRIPT_DIR/lua/core/options.lua" "$HOME/.config/nvim/lua/core/options.lua"
cp -f "$SCRIPT_DIR/lua/core/keymaps.lua" "$HOME/.config/nvim/lua/core/keymaps.lua"
cp -f "$SCRIPT_DIR/lua/plugins/init.lua" "$HOME/.config/nvim/lua/plugins/init.lua"

echo "Syncing plugins with lazy.nvim..."
# --- THIS IS THE FIX ---
# We use two separate '+' flags to run commands in sequence
# instead of trying to chain them with a '|'.
nvim $silent "+Lazy sync" "+qall"

echo ""
echo "nvim configuration complete."
echo "Please restart nvim."
