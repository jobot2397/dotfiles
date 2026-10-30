# Common zsh configuration for all platforms

# Add completions directories to fpath
fpath=($HOME/dotfiles/zsh/completions $HOME/dotfiles/zsh/plugins/zsh-completions/src $fpath)

# mise integration (must be before compinit so mise-installed tools are available)
if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

# Initialize completion system
autoload -Uz compinit
compinit

# Enable bash completion compatibility
autoload -U +X bashcompinit
bashcompinit

# Source all .zsh completion files in the completions directory
for file in "$HOME/dotfiles/zsh/completions"/*.zsh; do
  [ -f "$file" ] && source "$file"
done

# fzf shell integration (Ctrl+R history, Ctrl+T files, Alt+C dirs)
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --zsh)"
fi

# Load fzf-tab AFTER compinit
source "$HOME/dotfiles/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh"

# fzf-tab configuration
zstyle ':fzf-tab:*' fzf-flags --height=50% --preview-window=right:50%
zstyle ':completion:*:descriptions' format '[%d]'

# SSH hostname completion
if [ -f ~/.ssh/config ]; then
  # Extract hosts from ~/.ssh/config
  hosts=($(awk '/^Host / {for(i=2;i<=NF;i++) if($i !~ /[*?]/) print $i}' ~/.ssh/config))
fi

if [ -f ~/.ssh/known_hosts ]; then
  # Extract hosts from ~/.ssh/known_hosts
  known_hosts=($(awk '{print $1}' ~/.ssh/known_hosts | cut -d, -f1 | sort -u))
  hosts=($hosts $known_hosts)
fi

# Set up completion for ssh, scp, sftp
zstyle ':completion:*:(ssh|scp|sftp):*' hosts $hosts

# Load autosuggestions
source "$HOME/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# zsh-syntax-highlighting configuration
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Enable argument and path highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=cyan,underline'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=yellow,underline'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=yellow'

# Load zsh syntax highlighting (must be last)
source "$HOME/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# mise
