#!/bin/sh

echo "=== Install Nodebrew"
brew install nodenv
brew upgrade nodenv node-build

echo "=== Install latest node"
nodenv install 14.17.5
nodenv global 14.17.5
node -v
