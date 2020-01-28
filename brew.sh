#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# taps
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
grep -qxF "${BREW_PREFIX}/bin/bash" /etc/shells || sudo echo "${BREW_PREFIX}/bin/bash" >> /etc/shells
brew install bash
brew install bash-completion@2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install more recent versions of some macOS tools.
brew install \
  archey \
  awscli \
  azure-cli \
  circleci \
  curl \
  docker-completion \
  docker-compose-completion \
  docker-machine-completion \
  firebase-cli \
  git \
  git-lfs \
  go \
  hub \
  jq \
  mkcert \
  node \
  nss \
  openssl@1.1 \
  perl \
  python \
  rbenv \
  redis \
  terraform \
  terraform@0.11 \
  tflint \
  thefuck \
  tree \
  vim \
  watch \
  yarn

# Caskroom Apps
brew cask install \
  1password \
  1password-cli \
  adobe-creative-cloud \
  alfred \
  anylist \
  bartender \
  caret \
  dash \
  docker \
  dropbox \
  firefox \
  firefox-developer-edition \
  flow \
  font-cascadia \
  font-fantasque-sans-mono \
  font-fira-code \
  font-hack \
  font-hasklig \
  font-ia-writer-duo \
  font-ia-writer-mono \
  font-ibm-plex \
  font-jetbrains-mono \
  font-lora \
  font-victor-mono \
  github \
  google-backup-and-sync \
  google-chrome \
  google-cloud-sdk \
  imageoptim \
  insomnia \
  iterm2 \
  keepingyouawake \
  kitematic \
  logitech-control-center \
  microsoft-office \
  qlcolorcode \
  qlimagesize \
  qlmarkdown \
  qlstephen \
  qlvideo \
  sip \
  slack \
  spectacle \
  the-unarchiver \
  visual-studio-code \
  vlc

# Remove outdated versions from the cellar.
brew cleanup
