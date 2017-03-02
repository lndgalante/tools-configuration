export ZSH=/Users/leo/.oh-my-zsh

plugins=(git react-native)

source $ZSH/oh-my-zsh.sh

cd /Users/leo/Downloads/repos/

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH="$HOME/.fastlane/bin:$PATH"