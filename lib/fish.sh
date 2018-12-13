#!/bin/sh

echo "=== Install Fish Shell"

if !(type fish) &>/dev/null; then
  brew install fish
  sudo sh -c "echo '/usr/local/bin/fish' >> /etc/shells"
  chsh -s /usr/local/bin/fish
fi

# fisherman (fish plugin manager)
echo "=== Install Fisherman"
if !(type fisher) &>/dev/null; then
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fi
fisher
fisher up
