#!/bin/sh

# copy dotfiles
cp -R .gitconfig ~/
cp -R .editorconfig ~/
cp -R .tmux.conf ~/
cp -R .vimrc ~/
cp -R .config/ ~/.config

# Homebrew
echo "=== Install Homebrew"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./brew.sh

brew doctor

# nodebrew
echo "=== Install Nodebrew"
nodebrew install-binary latest
nodebrew use latest
