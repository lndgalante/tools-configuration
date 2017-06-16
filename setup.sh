echo "XCode command line tools"
xcode-select --install

printf "System - Require password immediately after sleep or screen saver begins\n"
sudo defaults write com.apple.screensaver askForPassword -int 1
sudo defaults write com.apple.screensaver askForPasswordDelay -int 0

printf "System - Automatically restart if system freezes\n"
sudo systemsetup -setrestartfreeze on

printf "System - Avoid creating .DS_Store files on network volumes\n"
sudo defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "Keyboard - Automatically illuminate built-in MacBook keyboard in low light\n"
sudo defaults write com.apple.BezelServices kDim -bool true

printf "Keyboard - Set a fast keyboard repeat rate\n"
sudo defaults write NSGlobalDomain KeyRepeat -int 0

printf "Keyboard - Turn off keyboard illumination when computer is not used for 5 minutes\n"
sudo defaults write com.apple.BezelServices kDimTime -int 300

printf "Bluetooth - Increase sound quality for headphones/headsets\n"
sudo defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

printf "Finder - Show the $HOME/Library folder\n"
sudo chflags nohidden $HOME/Library

printf "Finder - Show hidden files\n"
sudo defaults write com.apple.finder AppleShowAllFiles -bool true

printf "Finder - Show filename extensions\n"
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "Finder - Disable the warning when changing a file extension\n"
sudo defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf "Finder - Display full POSIX path as window title\n"
sudo defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

printf "Finder - Use list view in all Finder windows\n"
sudo defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

printf "Finder - Disable the warning before emptying the Trash\n"
sudo defaults write com.apple.finder WarnOnEmptyTrash -bool false

printf "Finder - Allow text selection in Quick Look\n"
sudo defaults write com.apple.finder QLEnableTextSelection -bool true

printf "Safari - Disable sending search queries to Apple.\n"
sudo defaults write com.apple.Safari UniversalSearchEnabled -bool false

printf "TextEdit - Use plain text mode for new documents\n"
sudo defaults write com.apple.TextEdit RichText -int 0

printf "TextEdit - Open and save files as UTF-8 encoding\n"
sudo defaults write com.apple.TextEdit PlainTextEncoding -int 4
sudo defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

printf "Time Machine - Prevent prompting to use new hard drives as backup volume\n"
sudo defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

printf "Printer - Expand print panel by default\n"
sudo defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

printf "Printer - Automatically quit printer app once the print jobs complete\n"
sudo defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "Check for software updates daily, not just once per week"
sudo defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

echo "Disable Photos.app from starting everytime a device is plugged in"
sudo defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

echo "Show dotfiles in Finder by default"
sudo defaults write com.apple.finder AppleShowAllFiles TRUE

echo "Show all processes in Activity Monitor"
sudo defaults write com.apple.ActivityMonitor ShowCategory -int 0

echo "Sort Activity Monitor results by CPU usage"
sudo defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
sudo defaults write com.apple.ActivityMonitor SortDirection -int 0

echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Homebrew installs"
brew install git
brew install yarn
brew install openssl
brew install nvm
brew install thefuck
brew install git-extras
brew install pandoc
brew install brew-cask
brew install brew-pip
brew install brew-gem
brew install zsh
brew install zsh-syntax-highlighting
brew install wine
brew install playonmac
brew install fcrackzip
brew install wifi-password
brew install aircrack-ng
brew install ncrack
brew install heroku
brew cleanup

echo "Brew cask installs"
brew cask install fastlane
brew cask install hyper
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install vlc
brew cask install webtorrent
brew cask install slack
brew cask install ccleaner
brew cask install mounty
brew cask install the-unarchiver
brew cask install sketch
brew cask install recordit
brew cask install android-studio
brew cask install virtualbox
brew cask install genymotion
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask cleanup