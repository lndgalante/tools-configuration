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

# Postgres
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# FNM Node Manager
eval "$(fnm env --use-on-cd --shell zsh)"

# MBP Info
fastfetch

# Initial Folder
cd ~/Developer

# Welcome Message
echo "\n"
pokemonsay "Take a look around, and have fun coding today!"

# Display folders
erd --level 1 --dirs-only --suppress-size

# bun completions
[ -s "/Users/leo/.bun/_bun" ] && source "/Users/leo/.bun/_bun"
