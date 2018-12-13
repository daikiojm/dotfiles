#!/bin/sh

echo "=== Install Nodebrew"
brew install nodebrew

echo "=== Install latest node"
nodebrew install-binary latest
nodebrew use latest
node -v
