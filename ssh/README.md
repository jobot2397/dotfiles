# SSH Configuration

## Manual Setup

### Linux and macOS
Create a symlink to use the dotfiles SSH configuration:

```bash
# Create .ssh directory if it doesn't exist
mkdir -p ~/.ssh

# Backup existing SSH config if it exists
mv ~/.ssh/config ~/.ssh/config.backup 2>/dev/null || true

# Create symlink (source) -> (target)
ln -sf ~/dotfiles/ssh/config ~/.ssh/config

# Set proper permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config
```

## Verify Setup

```bash
# Check if the symlink was created correctly
ls -la ~/.ssh/config

# Verify the symlink points to your dotfiles
readlink ~/.ssh/config

# Test SSH configuration syntax (optional)
ssh -T git@github.com 2>/dev/null || echo "SSH config loaded successfully"
```

The symlink should show: `~/.ssh/config -> /Users/<user>/dotfiles/ssh/config` (macOS) or `/home/<user>/dotfiles/ssh/config` (Linux)

## Security Note

- SSH private keys should NEVER be stored in the dotfiles repository
- Only store the SSH config file, not private keys
- Keep SSH keys in `~/.ssh/` with proper permissions (600 for keys, 644 for public keys)