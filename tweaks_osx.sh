# Hi-speed Keyboard
defaults write NSGlobalDomain KeyRepeat -int 0

# Accent off / Disable Press and Hold
defaults write -g ApplePressAndHoldEnabled -bool false

# Show posix path on Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Enable text selection on QuickLook (text, markdown etc...)
defaults write com.apple.finder QLEnableTextSelection -bool TRUE

# Reveal ~/Library folder
chflags nohidden ~/Library

# Enable auto-hide on Dock and make it super-fast!
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0