# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Dropbox/Screenshots"

# Change scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
