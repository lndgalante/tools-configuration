# Spaceship
source /opt/homebrew/opt/spaceship/spaceship.zsh
SPACESHIP_CHAR_SYMBOL=""
SPACESHIP_PROMPT_ASYNC=FALSE
SPACESHIP_PROMPT_SEPARATE_LINE=false

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# FNM
eval "$(fnm env --use-on-cd --shell zsh)"

# Clear
clear

# MBP Info
fastfetch

# Initial Folder
cd ~/Developer

# Hi Message
echo "\n\nHi Leo! Your current projects are:\n"

# Display folders
erd --level 1 --dirs-only --suppress-size
