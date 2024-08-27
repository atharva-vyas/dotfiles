#!/bin/bash
cd ..
rm -rf ./nvim/nvim-old
cp -r ./nvim/nvim ./nvim/nvim-old
cp -r ~/.config/nvim/ ./nvim
cp ~/.tmux.conf ./tmux/tmux.conf
cp ~/.tmux.conf ./tmux/.tmux.conf

