# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# show file extensions
defaults write -g AppleShowAllExtensions -bool true

# change to column view
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

killall Finder

# Save screenshots to the Dropbox
defaults write com.apple.screencapture location -string "$HOME/Dropbox/Screenshots"

# Change scroll direction
defaults write -g com.apple.swipescrolldirection -bool false

# Dock changes
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float "0"
defaults write com.apple.dock show-recents -bool false

killall Dock
