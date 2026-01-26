# Common aliases for all platforms

# Navigation
alias ~='cd $HOME'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ls variant (Requires EZA)
alias ls='eza --icons -al'
alias ll='ls'

# Shortcuts
alias h='history'
alias c='clear'

# Zsh
alias reload="source ~/.zshrc"
alias zshrc="zed ~/dotfiles/zsh/.zshrc"

# SSH config
alias sshconfig="zed ~/dotfiles/ssh/config"
