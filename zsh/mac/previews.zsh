# macOS-specific fzf-tab preview configurations

# cd - show directory contents (BSD ls)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls -lah $realpath 2>/dev/null'

# Files - show file contents with syntax highlighting if available
if command -v bat >/dev/null 2>&1; then
  zstyle ':fzf-tab:complete:*:*' fzf-preview 'bat --color=always --style=numbers --line-range=:50 $realpath 2>/dev/null || ls -lah $realpath 2>/dev/null'
else
  zstyle ':fzf-tab:complete:*:*' fzf-preview 'head -50 $realpath 2>/dev/null || ls -lah $realpath 2>/dev/null'
fi
