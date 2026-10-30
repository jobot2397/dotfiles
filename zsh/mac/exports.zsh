# macOS-specific environment variables

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# macOS-specific paths
export PATH="/usr/local/bin:$PATH"

# Bitwarden ssh agent
export SSH_AUTH_SOCK=/Users/jobot23/.bitwarden-ssh-agent.sock

# Claude code
export PATH="$HOME/.local/bin:$PATH"
