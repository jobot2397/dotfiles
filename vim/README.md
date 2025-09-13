# Vim Configuration

## Manual Setup

### Linux and macOS
Create a symlink to use the dotfiles vim configuration:

Backup existing .vimrc if it exists:

```zsh
mv ~/.vimrc ~/.vimrc.backup 2>/dev/null || true
```

Create symlink:

```zsh
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
```

## Verify Setup

Check if the symlink was created correctly:

```zsh
ls -la ~/.vimrc
```

Verify the symlink points to your dotfiles:

```zsh
readlink ~/.vimrc
```

Test vim configuration (optional):

```zsh
vim --version
```

The symlink should show: `~/.vimrc -> /Users/<user>/dotfiles/vim/.vimrc` (macOS) or `/home/<user>/dotfiles/vim/.vimrc` (Linux)