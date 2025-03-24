# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/leo/.bun/_bun" ] && source "/Users/leo/.bun/_bun"

# Clear the screen
clear

# Initial Folder
cd ~/Developer

# Welcome Message
echo "\n"
pokemonsay "Take a look around, and have some fun coding today! Peace out bro."
echo "\n"

# Display folders
erd --level 1 --dirs-only --suppress-size
