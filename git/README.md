# Git Configuration

## Manual Setup

### Linux and macOS
Create a symlink to use the dotfiles git configuration:

Backup existing .gitconfig if it exists:

```zsh
mv ~/.gitconfig ~/.gitconfig.backup 2>/dev/null || true
```

Create symlink:

```zsh
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
```

## Verify Setup

Check if the symlink was created correctly:

```zsh
ls -la ~/.gitconfig
```

Test git configuration:

```zsh
git config --list
```

Verify the symlink points to your dotfiles:

```zsh
readlink ~/.gitconfig
```

The symlink should show: `~/.gitconfig -> /Users/<user>/dotfiles/git/.gitconfig` (macOS) or `/home/<user>/dotfiles/git/.gitconfig` (Linux)