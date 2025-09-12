# Get the directory where this .zshrc file is located
DOTFILES_ZSH_DIR="${0:A:h}"

# Source common configuration files
source "$DOTFILES_ZSH_DIR/common.zsh"
source "$DOTFILES_ZSH_DIR/exports.zsh"
source "$DOTFILES_ZSH_DIR/aliases.zsh"

# Source platform-specific configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    source "$DOTFILES_ZSH_DIR/mac/macos.zsh"
    source "$DOTFILES_ZSH_DIR/mac/exports.zsh"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux  
    source "$DOTFILES_ZSH_DIR/linux/linux.zsh"
    source "$DOTFILES_ZSH_DIR/linux/exports.zsh"
fi