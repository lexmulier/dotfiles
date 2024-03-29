# Always open everything in Finder's list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Hide recent section on Dock
defaults write com.apple.dock show-recents -bool FALSE

# Always show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool True

# Disable natural scroll direction for trackpad
defaults write -g com.apple.swipescrolldirection -bool NO
