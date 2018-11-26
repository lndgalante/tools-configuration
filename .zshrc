export ZSH="/Users/leo/.oh-my-zsh"


plugins=(
  git
  github
  npm
  zsh-nvm
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
