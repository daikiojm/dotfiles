#! /bin/sh

echo "=== Install Homebrew"
if !(type brew) &>/dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "=== Install Homebrew packages"

xargs brew install < $(pwd)/brew.txt
xargs brew install --cask < $(pwd)/brew-cask.txt
