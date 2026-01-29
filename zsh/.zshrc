# Source common configuration files
source "$HOME/dotfiles/zsh/completions.zsh"
source "$HOME/dotfiles/zsh/exports.zsh"
source "$HOME/dotfiles/zsh/aliases.zsh"
source "$HOME/dotfiles/zsh/previews.zsh"
source "$HOME/dotfiles/zsh/zoxide.zsh"

# Source platform-specific configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS - source all .zsh files in mac directory
    for file in "$HOME/dotfiles/zsh/mac"/*.zsh; do
        [ -f "$file" ] && source "$file"
    done
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux - source all .zsh files in linux directory
    for file in "$HOME/dotfiles/zsh/linux"/*.zsh; do
        [ -f "$file" ] && source "$file"
    done
fi

# Starship
export PATH="$HOME/.local/bin:$PATH"
eval "$(starship init zsh)"

# Add to ~/.zshrc
eval "$(fnox activate zsh)"
