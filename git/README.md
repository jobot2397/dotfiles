# Git Configuration

## Manual Setup

### Linux and macOS
Create a symlink to use the dotfiles git configuration:

```bash
# Backup existing .gitconfig if it exists
mv ~/.gitconfig ~/.gitconfig.backup 2>/dev/null || true

# Create symlink (source) -> (target)
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
```

## Verify Setup

```bash
# Check if the symlink was created correctly
ls -la ~/.gitconfig

# Test git configuration
git config --list

# Verify the symlink points to your dotfiles
readlink ~/.gitconfig
```

The symlink should show: `~/.gitconfig -> /Users/<user>/dotfiles/git/.gitconfig` (macOS) or `/home/<user>/dotfiles/git/.gitconfig` (Linux)