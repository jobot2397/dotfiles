# Vim Configuration

## Manual Setup

### Linux and macOS
Create a symlink to use the dotfiles vim configuration:

```bash
# Backup existing .vimrc if it exists
mv ~/.vimrc ~/.vimrc.backup 2>/dev/null || true

# Create symlink (source) -> (target)
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
```

## Verify Setup

```bash
# Check if the symlink was created correctly
ls -la ~/.vimrc

# Verify the symlink points to your dotfiles
readlink ~/.vimrc

# Test vim configuration (optional)
vim --version
```

The symlink should show: `~/.vimrc -> /Users/<user>/dotfiles/vim/.vimrc` (macOS) or `/home/<user>/dotfiles/vim/.vimrc` (Linux)