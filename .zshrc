export ZSH=/Users/leo/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  yarn-autocompletions
)

# Add oh-my-zsh and zsh-syntaxx-highlighting
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add pure prompt
autoload -U promptinit; promptinit
prompt pure

# This loads nvm bash_completion
export NVM_DIR="/Users/leo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Move to repos folder and clean everything
cd /Users/leo/Downloads/repos
clear
