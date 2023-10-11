# fnm
eval "$(fnm env --use-on-cd)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/leo/.bun/_bun" ] && source "/Users/leo/.bun/_bun"

# spaceship
source "/opt/homebrew/opt/spaceship/spaceship.zsh"
SPACESHIP_CHAR_SYMBOL=""
SPACESHIP_PROMPT_ASYNC=FALSE
SPACESHIP_PROMPT_SEPARATE_LINE=false
