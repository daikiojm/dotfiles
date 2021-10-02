#!/bin/sh

set -ex

echo "=== Install Fish Shell"

if !(type fish) &>/dev/null; then
  brew install fish
  sudo sh -c "echo '/usr/local/bin/fish' >> /etc/shells"
  chsh -s /usr/local/bin/fish
fi

# fisher (fish plugin manager)
echo "=== Install Fisher"
if !(type fisher) &>/dev/null; then
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fi

env fish -c "fisher update"