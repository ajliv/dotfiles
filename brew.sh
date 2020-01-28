#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
grep -qxF "/usr/local/bin/bash" /etc/shells || sudo echo "/usr/local/bin/bash" >> /etc/shells
brew install bash bash-completion

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
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
  perl \
  python \
  rbenv \
  redis \
  ruby \
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
