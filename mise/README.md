# mise Configuration

This directory contains mise (formerly rtx) configuration for managing development tool versions across machines.

## Setup

Create a symlink from this directory to `~/.config/mise`:

```bash
# Remove existing mise config if it exists
rm -rf ~/.config/mise

# Create symlink to dotfiles mise directory
ln -s ~/dotfiles/mise ~/.config/mise
```

## Files

- `config.toml` - Global mise configuration and default tool versions

## Usage

After symlinking, mise will automatically use this configuration:

Install all configured tools
```bash
mise install
```
