export ZSH=/Users/leo/.oh-my-zsh

# Import zsh-syntax-highlighting - https://github.com/zsh-users/zsh-syntax-highlighting
source /Users/leo/Downloads/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Themes https://github.com/robbyrussell/oh-my-zsh/wiki/themes
#ZSH_THEME="robbyrussell"  

# Useful plugins - https://github.com/unixorn/awesome-zsh-plugins
plugins=(gitfast react-native zsh-syntax-highlighting)

# Actually load Oh-My-Zsh - https://github.com/robbyrussell/oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Use Pure prompt by Sindre - https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# nvm - node version manager - https://github.com/creationix/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Add neofetch - https://github.com/dylanaraps/neofetch
cd /Users/leo/Downloads/repos
clear
neofetch