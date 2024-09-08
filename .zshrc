# Clear History
clear

# Spaceship Prompt
source /opt/homebrew/opt/spaceship/spaceship.zsh
SPACESHIP_CHAR_SYMBOL=""
SPACESHIP_PROMPT_ASYNC=FALSE
SPACESHIP_PROMPT_SEPARATE_LINE=false

# Bun Runtime
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# FNM Node Manager
eval "$(fnm env --use-on-cd --shell zsh)"

# MBP Info
fastfetch

# Initial Folder
cd ~/Developer

# Welcome Message
echo "\n\nHi Leo 👋 Your current projects are 👇\n"

# Display folders
erd --level 1 --dirs-only --suppress-size
