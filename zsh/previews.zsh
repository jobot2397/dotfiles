# Common fzf-tab preview configurations (cross-platform)

# SSH - show SSH config for host
zstyle ':fzf-tab:complete:(ssh|scp|sftp):*' fzf-preview 'ssh -G $word 2>/dev/null | grep -E "^(hostname|user|port|identityfile)" || echo "Host: $word"'

# Kill - show process details
zstyle ':fzf-tab:complete:kill:*' fzf-preview 'ps -f -p $word 2>/dev/null'
