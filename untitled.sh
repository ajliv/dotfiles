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
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

brew install ant
brew install composer
brew install git
brew install git-lfs
brew install go
brew install gpg
brew install graphicsmagick
brew install hub
brew install imagemagick --with-webp
brew install jq
brew install node
brew install tree
brew install zsh
brew install zsh-completions

# Remove outdated versions from the cellar.
brew cleanup


# Caskroom Apps

brew cask install alfred
brew cask install appcleaner
brew cask install bartender
brew cask install charles
brew cask install dash
brew cask install docker
brew cask install dropbox
brew cask install filezilla
brew cask install firefox
brew cask install flux
brew cask install github-desktop
brew cask install google-chrome
brew cask install google-drive
brew cask install hipchat
brew cask install imageoptim
brew cask install iterm2
brew cask install keepingyouawake
brew cask install kitematic
brew cask install logitech-control-center
brew cask install logitech-unifying
brew cask install macdown
brew cask install megasync
brew cask install spectacle
brew cask install sublime-text
brew cask install the-unarchiver

brew cask cleanup
