#!/bin/zsh

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing apps..."
# Essential apps
brew install --cask google-chrome
brew install --cask spotify
brew install --cask bettertouchtool
brew install --cask dropbox

# Utilities
brew install --cask appcleaner
brew install --cask audacity
brew install --cask itsycal
brew install --cask the-unarchiver

# Communication
brew install --cask discord
brew install --cask ferdi
brew install --cask zoom

# Development
brew install git
brew install --cask github
brew install --cask visual-studio-code

# Other
brew install --cask mactex
brew install --cask musescore
brew install glfw3 # needed for Runelite
brew install glew # needed for Runelite



