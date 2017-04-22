export ZSH=/Users/fenwil/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git react-native)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

cd /Users/fenwil/Downloads/repos/

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH="$HOME/.fastlane/bin:$PATH"