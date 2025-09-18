#!/bin/sh
cd "$(dirname "$0")/.."  # ensures we are in /tmp/dotfiles

cp -r nvim/nvim ~/.config/nvim
cp tmux/tmux.conf ~/.tmux.conf
cp zsh/zshrc ~/.zshrc
cp zsh/p10k.zsh ~/.p10k.zsh
