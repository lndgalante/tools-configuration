export ZSH="/Users/leo/.oh-my-zsh"


plugins=(
  osx
  git
  github
  npm
  node
  zsh-nvm
  javascript
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-better-npm-completion
)

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


source $ZSH/oh-my-zsh.sh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
