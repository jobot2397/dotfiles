# Source common configuration files
source "$HOME/dotfiles/zsh/common.zsh"
source "$HOME/dotfiles/zsh/exports.zsh"
source "$HOME/dotfiles/zsh/aliases.zsh"

# Source platform-specific configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    source "$HOME/dotfiles/zsh/mac/macos.zsh"
    source "$HOME/dotfiles/zsh/mac/exports.zsh"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    source "$HOME/dotfiles/zsh/linux/linux.zsh"
    source "$HOME/dotfiles/zsh/linux/exports.zsh"
fi
