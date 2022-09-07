#!/bin/zsh

###############################################################################
# Finder                                                                      #
###############################################################################
# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show file extensions
defaults write -g AppleShowAllExtensions -bool true

# Change to column view
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# New finder window opens Downloads
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/Downloads/"

# Disable warning when changing file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Hide icons on the desktop
defaults write com.apple.finder CreateDesktop -bool false

# Enable text selection in quick look windows
defaults write com.apple.finder QLEnableTextSelection -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Sort folders first
#defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Add a quit option to Finder
#defaults write com.apple.finder QuitMenuItem -bool true

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

# App Expose group by app
defaults write com.apple.dock expose-group-apps -bool true

# Disable default trackpad gestures 
defaults write com.apple.dock showLaunchpadGestureEnabled -bool false
defaults write com.apple.dock showDesktopGestureEnabled -bool false
defaults write com.apple.dock showAppExposeGestureEnabled -bool false
defaults write com.apple.dock showMissionControlGestureEnabled -bool false

# Make dock icons of hidden applications translucent
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
# 14: Quick Note
# Top left screen corner - Mission Control
defaults write com.apple.dock wvous-tl-corner -int 2
# Top right screen corner - Show application windows
defaults write com.apple.dock wvous-tr-corner -int 3
# Bottom left screen corner - Desktop
defaults write com.apple.dock wvous-bl-corner -int 4
# Bottom right screen corner - none
defaults write com.apple.dock wvous-br-corner -int 0

# Wipe all (default) app icons from the Dock
#defaults write com.apple.dock persistent-apps -array

killall Dock

###############################################################################
# General                                                                     #
###############################################################################
# Change scroll direction
defaults write -g com.apple.swipescrolldirection -bool false

# Three finger horizontal swipe to go between pages
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 1

# Four finger horizontal swipe to go between Spaces
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2

# Disable 2-finger double tap to zoom
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 0
 
# Remove spring loading delay
defaults write -g com.apple.springing.delay -float "0"

# Make the speed when scrolling by dragging faster
defaults write -g NSAutoscrollResponseMultiplier -float "3"

# Always show expanded save dialogs
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

# Always ask to keep changes when closing documents
defaults write -g NSCloseAlwaysConfirmsChanges -bool true

# Save screenshots to folder in Pictures
defaults write com.apple.screencapture location -string "~/Pictures/Screenshots" && killall SystemUIServer

# Show battery percentage in menu bar
defaults -currentHost write com.apple.controlcenter BatteryShowPercentage -bool true

# Remove Spotlight icon
defaults -currentHost write com.apple.Spotlight MenuItemHidden -bool true

# Remove date from menubar clock to allow for itsycal
defaults write com.apple.menuextra.clock DateFormat -string "j:mm a"

# Disable Siri in menu bar
#defaults write com.apple.Siri StatusMenuVisible -bool 0

# Don't show an open document dialog when launching an application like TextEdit or Preview
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

# Prevent help windows from floating
defaults write com.apple.helpviewer DevMode -bool true

# TextEdit - create plain text documents by default
defaults write com.apple.TextEdit RichText -bool false

# Do not offer new disks for Time Machine Backups
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true 

# Disable press-and-hold and enable key repeat
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

# Custom Option + arrow shortcuts to switch between spaces
plutil -replace AppleSymbolicHotKeys.79.value.parameters -json '[ 65535, 123, 11010048 ]' ~/Library/Preferences/com.apple.symbolichotkeys.plist
plutil -replace AppleSymbolicHotKeys.80.value.parameters -json '[ 65535, 123, 11141120 ]' ~/Library/Preferences/com.apple.symbolichotkeys.plist
plutil -replace AppleSymbolicHotKeys.81.value.parameters -json '[ 65535, 124, 11010048 ]' ~/Library/Preferences/com.apple.symbolichotkeys.plist
plutil -replace AppleSymbolicHotKeys.82.value.parameters -json '[ 65535, 124, 11141120 ]' ~/Library/Preferences/com.apple.symbolichotkeys.plist

# Don't treat period or colon as part of words
# en_US_POSIX corresponds to the "United States (Computer)" setting that was shown in System Preferences in 10.8 and earlier
#defaults write -g AppleTextBreakLocale en_US_POSIX

###############################################################################
# Media                                                                       #
###############################################################################
# Turn off notification when a new song starts in Music app
#defaults write com.apple.Music userWantsPlaybackNotifications -bool false

# Prevent Photos from opening automatically when devices are plugged in
#defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

###############################################################################
# Chrome                                                                      #
###############################################################################
# Disable two-finger backswipe on trackpads
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false

