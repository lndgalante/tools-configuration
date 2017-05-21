export ZSH=/Users/fenwil/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git react-native zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

cd /Users/fenwil/Downloads/repos/
clear
neofetch

alias adb-shake="adb shell input keyevent 82"

export ANDROID_HOME=~/Library/Android/sdk
export GOPATH=~/go
export PATH=${PATH}:${GOPATH}/bin
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH="$HOME/.fastlane/bin:$PATH"
