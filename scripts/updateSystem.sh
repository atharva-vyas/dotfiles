#!/bin/sh

# Get the directory where this script is located, then go to parent (dotfiles root)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"

# Change to dotfiles directory
cd "$DOTFILES_DIR" || exit 1

# Create necessary directories if they don't exist
mkdir -p ~/.config

# Copy configuration files
cp -r nvim/nvim ~/.config/ 2>/dev/null || cp -r nvim ~/.config/ 2>/dev/null
cp tmux/tmux.conf ~/.tmux.conf 2>/dev/null || echo "tmux.conf not found"
cp zsh/zshrc ~/.zshrc 2>/dev/null || echo "zshrc not found"
cp zsh/p10k.zsh ~/.p10k.zsh 2>/dev/null || echo "p10k.zsh not found"

echo "Dotfiles updated successfully!"
