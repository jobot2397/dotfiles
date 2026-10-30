# Bitwarden SSH Agent

Shell integration so OpenSSH uses the **Bitwarden desktop SSH agent** instead of a local `ssh-agent`.

Bitwarden Desktop can expose an SSH agent that holds keys stored in your vault. Clients talk to it over a Unix socket at:

```text
~/.bitwarden-ssh-agent.sock
```

Private keys stay in Bitwarden; this module only sets `SSH_AUTH_SOCK`. **Never commit private keys** or vault session secrets to this repo.

## Requirements (macOS)

1. Install [Bitwarden Desktop](https://bitwarden.com/download/).
2. Sign in and unlock the vault.
3. Open **Settings → Security → SSH agent** (wording may vary by version) and **enable the SSH agent**.
4. Confirm the socket exists:

   ```bash
   ls -l ~/.bitwarden-ssh-agent.sock
   ```

Linux: Bitwarden Desktop may expose a similar agent socket when SSH agent support is enabled; paths and UI labels can differ—check Bitwarden’s docs for your platform.

## Usage (zsh)

From your `.zshrc` (or another sourced file), after `DOTFILES` points at this repo:

```zsh
source "$DOTFILES/bitwarden-ssh-agent/ssh-agent.zsh"
```

Or with an absolute path:

```zsh
source "$HOME/Documents/Projects/dotfiles/bitwarden-ssh-agent/ssh-agent.zsh"
```

`ssh-agent.zsh` exports:

```zsh
export SSH_AUTH_SOCK="${HOME}/.bitwarden-ssh-agent.sock"
```

only when that socket exists. If it is missing, a short warning is printed to stderr and any existing `SSH_AUTH_SOCK` is left unchanged.

## Verify

With Bitwarden open and the SSH agent enabled:

```bash
source "$DOTFILES/bitwarden-ssh-agent/ssh-agent.zsh"
echo "$SSH_AUTH_SOCK"   # should end with .bitwarden-ssh-agent.sock
ssh-add -l              # lists keys available via the Bitwarden agent
```

## Related (optional)

This module is **only** SSH agent socket wiring. CLI vault unlock (`BW_SESSION` / `bw unlock`) is separate and optional; do not confuse it with the desktop SSH agent.

## Security notes

- Do not commit SSH private keys, `.bw_session`, or other secrets.
- Keys used for auth live in your Bitwarden vault and are served by the desktop agent.
- Keep Bitwarden locked when unused; unlock before SSH operations that need vault keys.
