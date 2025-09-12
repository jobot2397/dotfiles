# Zsh Configuration

This directory contains my zsh configuration files with platform-specific support.

## Structure

- `.zshrc` - Main configuration file that sources other files
- `common.zsh` - Shared configuration for all platforms
- `exports.zsh` - Common environment variables
- `aliases.zsh` - Common aliases and shortcuts
- `mac/` - macOS-specific configurations
  - `macos.zsh` - macOS-specific settings
  - `exports.zsh` - macOS-specific environment variables
- `linux/` - Linux-specific configurations
  - `linux.zsh` - Linux-specific settings
  - `exports.zsh` - Linux-specific environment variables

## Setup

Create a symlink from your home directory to this zsh configuration:

Backup your existing .zshrc if it exists:
```bash
mv ~/.zshrc ~/.zshrc.backup
```

Create symlink to the dotfiles .zshrc:
```bash
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

The configuration automatically detects your platform (macOS/Linux) and loads the appropriate files.

## Verify Setup

After creating the symlink, reload your shell configuration:

```bash
source ~/.zshrc
```

Verify the configurations are loaded:

```bash
echo $PATH
```

```bash
alias
```
