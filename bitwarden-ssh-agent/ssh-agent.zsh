# Bitwarden desktop SSH agent — point OpenSSH at Bitwarden's agent socket.
# Enable "SSH agent" in Bitwarden desktop settings; the agent listens on this path.

_bw_ssh_sock="${HOME}/.bitwarden-ssh-agent.sock"

if [[ -S "$_bw_ssh_sock" ]]; then
  export SSH_AUTH_SOCK="$_bw_ssh_sock"
else
  # Socket missing: Bitwarden may be closed or SSH agent disabled.
  # Do not overwrite an existing SSH_AUTH_SOCK (e.g. ssh-agent / 1Password).
  print -u2 "bitwarden-ssh-agent: socket not found at ${_bw_ssh_sock}"
fi

unset _bw_ssh_sock
