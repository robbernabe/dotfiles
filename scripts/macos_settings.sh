#!/usr/bin/env bash
set -e          # exit on error
set -o pipefail # exit on any command in pipeline
set -x          # verbose

# Inspired by https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# Close any open System Preferences panes, to prevent them from overriding settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Safari                                                                      #
###############################################################################

# Re-enable backspace/delete to go back in Safari
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool YES

###############################################################################
# OS X Terminal                                                               #
###############################################################################

# Hide those annoying marks in the terminal window
defaults write com.apple.Terminal AutoMarkPromptLines -int 0

###############################################################################
# TextEdit                                                                    #
###############################################################################

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Disable smart quotes
defaults write com.apple.TextEdit SmartQuotes -bool false

# Disable smart dashes
defaults write com.apple.TextEdit SmartDashes -bool false

###############################################################################
# Apple Mail                                                                  #
###############################################################################

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

###############################################################################
# Chrome                                                                      #
###############################################################################

# Disable swipe to to navigate
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE

###############################################################################
# Finder                                                                      #
###############################################################################

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show icons for external hard drives on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Show icons for hard drives on the desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true

# Show icons for servers on the desktop
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Show icons for removable media on the desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show path in Title Bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# New Finder window shows $HOME
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the path bar
defaults write com.apple.finder ShowPathBar -boolean true

# Set sidebar icon size to small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Scrollbar fix for finder and Terminal
defaults write -g AppleShowScrollBars -string WhenScrolling

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Show item info near icons on the desktop and in other icon views 1
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Show item info near icons on the desktop and in other icon views 2
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Show item info near icons on the desktop and in other icon views 3
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Show item info to the right of the icons on the desktop
/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for icons on the desktop and in other icon views 1
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for icons on the desktop and in other icon views 2
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for icons on the desktop and in other icon views 3
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist

# Increase grid spacing for icons on the desktop and in other icon views 1
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

# Increase grid spacing for icons on the desktop and in other icon views 2
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

# Increase grid spacing for icons on the desktop and in other icon views 3
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

# Set the size of icons on the desktop and in other icon views 1
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 16" ~/Library/Preferences/com.apple.finder.plist

# Set the size of icons on the desktop and in other icon views 2
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 16" ~/Library/Preferences/com.apple.finder.plist

# Set the size of icons on the desktop and in other icon views 3
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 16" ~/Library/Preferences/com.apple.finder.plist

# Set the size of texzt on the desktop and in other icon views 1
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:textSize 11" ~/Library/Preferences/com.apple.finder.plist

# Set the size of text on the desktop and in other icon views 2
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:textSize 11" ~/Library/Preferences/com.apple.finder.plist

# Set the size of text on the desktop and in other icon views 3
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:textSize 11" ~/Library/Preferences/com.apple.finder.plist

# Show icons for external hard drives on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Show icons for hard drives on the Desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true

# Show icons for servers on the Desktop
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Show icons for removable media on the Desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

###############################################################################
# Networking                                                                  #
###############################################################################

# Enable AirDrop over Ethernet
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

###############################################################################
# iTerm2 Tweaks                                                               #
###############################################################################

# Fix the scroll to top bug (where it jumps immediately back to bottom of screen)
# Be sure to restart iTerm2 after running this.
# defaults write com.googlecode.iterm2 NSScrollAnimationEnabled -bool NO

###############################################################################
# Power                                                                       #
###############################################################################

# Disable Mac from sleeping entirely
/usr/bin/sudo /usr/bin/pmset -a sleep 0

# Never put the hard disks to sleep
/usr/bin/sudo /usr/bin/pmset -a disksleep 0

# Put display to sleep after 10 minutes
/usr/bin/sudo /usr/bin/pmset -a displaysleep 10

###############################################################################
# Mouse/Trackpad
###############################################################################

# Disable "natural" scrolling
defaults write ~/Library/Preferences/.GlobalPreferences.plist com.apple.swipescrolldirection -boolean NO

# Disable mouse pointer "shake to locate"
defaults write ~/Library/Preferences/.GlobalPreferences.plist CGDisableCursorLocationMagnification -bool YES

###############################################################################
# Keyboard
###############################################################################

# Enable full keyboard controls' do
defaults write ~/Library/Preferences/.GlobalPreferences.plist AppleKeyboardUIMode -int 3

# Set a shorter delay until key repeat
defaults write ~/Library/Preferences/.GlobalPreferences.plist InitialKeyRepeat -int 12

# Set a blazingly fast keyboard repeat rate
defaults write ~/Library/Preferences/.GlobalPreferences.plist KeyRepeat -int 0

# Enable character repeat on keydown
defaults write ~/Library/Preferences/.GlobalPreferences.plist ApplePressAndHoldEnabled -bool false

###############################################################################
# Dock, Dashboard, and Hot Corners                                            #
###############################################################################

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

# Hot Corners: Bottom left screen corner + Option Key - Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 5 && defaults write com.apple.dock wvous-bl-modifier -int 524288

# Hot Corners: Top left screen corner + Option Key - Sleep screen
defaults write com.apple.dock wvous-tl-corner -int 10 && defaults write com.apple.dock wvous-tl-modifier -int 524288

# Dock: Set to right
defaults write com.apple.Dock orientation -string "right"

# Dock: Set autohide
defaults write com.apple.Dock autohide -bool TRUE
