#! /bin/sh

echo "=== Install Homebrew"
if !(type brew) &>/dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "=== Install Homebrew packages"

brew install tree
brew install curl
brew install wget
brew install git
brew install git-flow
brew install gibo
brew install nodenv
brew install gnupg
brew install gpg-agent
brew install pinentry-mac
brew install pyenv
brew install tmux
brew install ghq
brew install fzf
brew install hub

brew install caskroom/cask/brew-cask
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install alfred
brew cask install dropbox
brew cask install skitch
brew cask install visual-studio-code
brew cask install slack
brew cask install docker
