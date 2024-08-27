#!/bin/bash
cd ..

rm -rf dotfiles-old
mkdir dotfiles-old
cd dotfiles-old
git clone https://github.com/atharva-vyas/dotfiles
cd ..
# rm -rf ./dotfiles-old/dotfiles/*
rm -rf ./dotfiles-old/dotfiles/dotfiles-old
cp -r ./* ./dotfiles-old/dotfiles
cd dotfiles-old/dotfiles
rm -rf dotfiles-old

git init
git add .
currentEpochTime=$(date +%s)
git commit -m "${currentEpochTime}"
git branch -M main
git remote add origin https://github.com/atharva-vyas/dotfiles.git
git push -u origin main
cd ../..
rm -rf dotfiles-old
