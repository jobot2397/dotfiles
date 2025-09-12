# Vim Configuration

## Manual Setup

### Linux and macOS
Create a symlink to use the dotfiles vim configuration:

Backup existing .vimrc if it exists:
```bash
mv ~/.vimrc ~/.vimrc.backup 2>/dev/null || true
```

Create symlink:
```bash
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
```

## Verify Setup

Check if the symlink was created correctly:
```bash
ls -la ~/.vimrc
```

Verify the symlink points to your dotfiles:
```bash
readlink ~/.vimrc
```

Test vim configuration (optional):
```bash
vim --version
```

The symlink should show: `~/.vimrc -> /Users/<user>/dotfiles/vim/.vimrc` (macOS) or `/home/<user>/dotfiles/vim/.vimrc` (Linux)