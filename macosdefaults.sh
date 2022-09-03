# Finder
# show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# show file extensions
defaults write -g AppleShowAllExtensions -bool true

# change to column view
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# new finder window opens Downloads
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/Downloads/"
killall Finder

# Save screenshots to Pictures
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

# Change scroll direction
defaults write -g com.apple.swipescrolldirection -bool false

# Dock changes
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float "0"
defaults write com.apple.dock show-recents -bool false
# Wipe all (default) app icons from the Dock
#defaults write com.apple.dock persistent-apps -array
killall Dock

# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Disable automatic capitalization as it’s annoying when typing code
defaults write -g NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
