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

# PostgreSQL
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

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

# Homebrew Update (weekly)
BREW_UPDATE_FILE="$HOME/.brew_update_timestamp"

function update_brew_if_needed() {
  current_time=$(date +%s)
  week_seconds=$((7 * 24 * 60 * 60))

  if [ ! -f "$BREW_UPDATE_FILE" ] || [ $((current_time - $(cat "$BREW_UPDATE_FILE"))) -ge $week_seconds ]; then
    echo "\n\nUpdating Homebrew (weekly update)\n"
    brew update
    brew upgrade
    brew cleanup
    echo $current_time > "$BREW_UPDATE_FILE"
  else
    echo "\n\nHomebrew was updated less than a week ago. Skipping update.\n"
  fi
}

update_brew_if_needed

# You are done
echo "\nYou are done! 🎉\n"
