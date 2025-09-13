# Common zsh configuration for all platforms

# Starship
export PATH="$HOME/.local/bin:$PATH"
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# FZF
setopt globdots
export FZF_BASE=/usr/bin/fzf

# FZF-TAB CONFIGURATION
# For cd preview window
zstyle ':fzf-tab:complete:cd:*' fzf-preview \
   '[[ -d $realpath ]] && eza -la --no-permissions --no-time --no-user --icons --color=always $realpath ||
   {batcat --color=always --style=numbers --line-range=:500 $realpath 2> /dev/null || echo "Cannot preview this file"}'
# For bat preview window
zstyle ':fzf-tab:complete:batcat:*' fzf-preview \
   '[[ -d $realpath ]] && eza -la --no-permissions --no-time --no-user --icons --color=always $realpath ||
   {batcat --color=always --style=numbers --line-range=:500 $realpath 2> /dev/null || echo "Cannot preview this file"}'
# For zed preview window
zstyle ':fzf-tab:complete:zed:*' fzf-preview \
   '[[ -d $realpath ]] && eza -la --no-permissions --no-time --no-user --icons --color=always $realpath ||
   {batcat --color=always --style=numbers --line-range=:500 $realpath 2> /dev/null || echo "Cannot preview this file"}'
# For vscode preview window
zstyle ':fzf-tab:complete:code:*' fzf-preview \
   '[[ -d $realpath ]] && eza -la --no-permissions --no-time --no-user --icons --color=always $realpath ||
   {batcat --color=always --style=numbers --line-range=:500 $realpath 2> /dev/null || echo "Cannot preview this file"}'
# For nvim preview window
zstyle ':fzf-tab:complete:nvim:*' fzf-preview \
   '[[ -d $realpath ]] && eza -la --no-permissions --no-time --no-user --icons --color=always $realpath ||
   {batcat --color=always --style=numbers --line-range=:500 $realpath 2> /dev/null || echo "Cannot preview this file"}'


# Oh My ZSH https://github.com/ohmyzsh/ohmyzsh/wiki
export ZSH="$HOME/.oh-my-zsh"
plugins=(
    docker
    eza
    fzf
    fzf-tab
    git
    golang
    helm
    kubectl
    nvm
    npm
    ssh
    starship
    yarn
)
source $ZSH/oh-my-zsh.sh
