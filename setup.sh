echo "XCode command line tools"
xcode-select --install

echo "General settings"
sudo chflags hidden /Applications/maps.app
sudo chflags hidden /Applications/Photo\ Booth.app

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

printf "Finder - Show path bar\n"
sudo defaults write com.apple.finder ShowPathbar -bool true

printf "Finder - Show status bar\n"
sudo defaults write com.apple.finder ShowStatusBar -bool true

printf "Finder - Display full POSIX path as window title\n"
sudo defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

printf "Finder - Use list view in all Finder windows\n"
sudo defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

printf "Finder - Allow quitting via COMMAND+Q -- Doing so will also hide desktop icons\n"
sudo defaults write com.apple.finder QuitMenuItem -bool true

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

printf "App Store - Enable the WebKit Developer Tools in the Mac App Store\n"
sudo defaults write com.apple.appstore WebKitDeveloperExtras -bool true

echo "Disabling local Time Machine backups"
sudo hash tmutil &> /dev/null && sudo tmutil disablelocal

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

echo "Homebrew installs"
brew install bash-completion2
brew install brew-cask
brew install ack
brew install wget
brew install bash
brew install vim
brew install ccat
brew install shellcheck
brew install tree
brew install git
brew install the_silver_searcher
brew install node
brew install npm
brew install python3
brew install bpython
brew install curl
brew install libevent
brew install openssl
brew install nvm
brew install thefuck
brew install findutils
brew install rename
brew install readline
brew install git-extras
brew install coreutils
brew install ant
brew install autoconf
brew install automake
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install pandoc
brew install brew-pip
brew install brew-gem
brew install zsh
brew install fish
brew install ctunnel
brew install dnscryptproxy
brew install privoxy
brew install dnsmasq
brew install sshuttle
brew install zshlovers
brew install zsh-syntax-highlighting
brew install ncrack
brew install wifi-password
brew install xcv
brew install autojump
brew cleanup

echo "Brew cask installs"
brew cask install google-chrome
brew cask install lastpass
brew cask install firefox
brew cask install vlc
brew cask install the-unarchiver
brew cask install iterm2
brew cask install teamviewer
brew cask install google-hangouts
brew cask install flickr-uploadr
brew cask install namechanger
brew cask install caffeine
brew cask install gas-mask
brew cask install transmission
brew cask install virtualbox
brew cask install appcleane
brew cask install 1clipboard
brew cask install cakebrew
brew cask install coteditor
brew cask install abricotine
brew cask install proxpn
brew cask install macpass
brew cask install keka
brew cask install megasync
brew cask install dnscrypt
brew cask install apppolice
brew cask install clipy
brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install suspicious-package
brew cask install webp-quicklook
brew cask install menucalendarclock-ical
brew cask install vmware-fusion
brew cask cleanup