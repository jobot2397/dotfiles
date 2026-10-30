# Linux-specific environment variables

# Common Linux paths
export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

# Snap packages (if using Ubuntu/similar)
export PATH="/snap/bin:$PATH"

# Bitwarden ssh agent
export SSH_AUTH_SOCK=/home/jobot2397/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock

# RUST
. "$HOME/.cargo/env"
