# Git Configuration

## Manual Setup

### Linux and macOS
Create a symlink to use the dotfiles git configuration:

Backup existing .gitconfig if it exists:
```bash
mv ~/.gitconfig ~/.gitconfig.backup 2>/dev/null || true
```

Create symlink:
```bash
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
```

## Verify Setup

Check if the symlink was created correctly:
```bash
ls -la ~/.gitconfig
```

Test git configuration:
```bash
git config --list
```

Verify the symlink points to your dotfiles:
```bash
readlink ~/.gitconfig
```

The symlink should show: `~/.gitconfig -> /Users/<user>/dotfiles/git/.gitconfig` (macOS) or `/home/<user>/dotfiles/git/.gitconfig` (Linux)