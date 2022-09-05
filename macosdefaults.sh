#!/bin/zsh

###############################################################################
# Finder                                                                      #
###############################################################################
# show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# show file extensions
defaults write -g AppleShowAllExtensions -bool true

# change to column view
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# new finder window opens Downloads
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/Downloads/"

# disable warning when changing file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Hide icons on the desktop
defaults write com.apple.finder CreateDesktop -bool false

# Enable Text Selection in Quick Look Windows
defaults write com.apple.finder QLEnableTextSelection -bool true

# show status bar
#defaults write com.apple.finder ShowStatusBar -bool true
# show path bar
#defaults write com.apple.finder ShowPathbar -bool true

killall Finder

###############################################################################
# Dock                                                                        #
###############################################################################
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float "0"

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Enable highlight hover effect for the grid view of a stack
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Disable arranging spaces automatically
defaults write com.apple.dock mru-spaces -bool false

# Disable the Launchpad gesture (pinch with thumb and three fingers)
defaults write com.apple.dock showLaunchpadGestureEnabled -bool false

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
# Top left screen corner → Mission Control
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Show application windows
defaults write com.apple.dock wvous-tr-corner -int 3
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Desktop
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0

# Wipe all (default) app icons from the Dock
#defaults write com.apple.dock persistent-apps -array

killall Dock

###############################################################################
# General                                                                     #
###############################################################################
# Change scroll direction
defaults write -g com.apple.swipescrolldirection -bool false

# lower spring loading delay
defaults write -g com.apple.springing.delay -float "0"

# Always show expanded save dialogs
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

# Save screenshots to folder in Pictures
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

# TextEdit - create plain text documents by default
defaults write com.apple.TextEdit RichText -bool false && killall TextEdit

# Do not offer new disks for Time Machine Backups
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true 

# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Disable automatic capitalization as it’s annoying when typing code
defaults write -g NSAutomaticCapitalizationEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
#defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
#defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false

# Turn off notification when a new song starts in Music app
#defaults write com.apple.Music userWantsPlaybackNotifications -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# don't show an open panel when opening an application like TextEdit or Preview
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

# make the speed when scrolling by dragging faster
defaults write -g NSAutoscrollResponseMultiplier -float 3

# don't treat period or colon as part of words
# en_US_POSIX corresponds to the "United States (Computer)" setting that was shown in System Preferences in 10.8 and earlier
#defaults write -g AppleTextBreakLocale en_US_POSIX

###############################################################################
# Messages                                                                    #
###############################################################################
# Disable automatic emoji substitution (i.e. use plain text smileys)
#defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# Disable smart quotes as it’s annoying for messages that contain code
#defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# Disable continuous spell checking
#defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

###############################################################################
# Chrome                                                                      #
###############################################################################
# Disable the all too sensitive backswipe on trackpads
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false


