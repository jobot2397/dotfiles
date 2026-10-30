# Bitwarden session management
BW_SESSION_FILE="$HOME/.bw_session"

if [ -f "$BW_SESSION_FILE" ]; then
  export BW_SESSION=$(cat "$BW_SESSION_FILE")
  if ! bw unlock --check &>/dev/null; then
    unset BW_SESSION
    rm "$BW_SESSION_FILE"
    echo "Bitwarden session expired."
    echo -n "Unlock Bitwarden vault? [y/N] "
    read -r REPLY
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      export BW_SESSION=$(bw unlock --raw)
      echo "$BW_SESSION" > "$BW_SESSION_FILE"
      chmod 600 "$BW_SESSION_FILE"
    fi
  fi
else
  echo -n "Unlock Bitwarden vault? [y/N] "
  read -r REPLY
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    export BW_SESSION=$(bw unlock --raw)
    echo "$BW_SESSION" > "$BW_SESSION_FILE"
    chmod 600 "$BW_SESSION_FILE"
  fi
fi
