#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion@2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install more recent versions of some macOS tools.
brew install archey
brew install awscli
brew install circleci
brew install dep
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion
brew install firebase-cli
brew install git
brew install git-lfs
brew install go
brew install grep
brew install hub
brew install jq
brew install rbenv
brew install terraform
brew install thefuck
brew install tree
brew install vim --override-system-vi
brew install watch
brew install yarn

# Caskroom Apps

brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install appcleaner
brew cask install bartender
brew cask install caret
brew cask install charles
brew cask install dash
brew cask install docker
brew cask install dropbox
brew cask install filezilla
brew cask install firefox
brew cask install flow
brew cask install font-hasklig
brew cask install github
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install imageoptim
brew cask install iterm2
brew cask install keepingyouawake
brew cask install kitematic
brew cask install logitech-control-center
brew cask install postman
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install sip
brew cask install slack
brew cask install spectacle
brew cask install the-unarchiver
brew cask install visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup
