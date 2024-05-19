function sshpubkey() {
  if [ "$1" = "rsa" ]; then
    if [ -f "$HOME/.ssh/id_rsa.pub" ]; then
      cat "$HOME/.ssh/id_rsa.pub" | xclip -selection clipboard
      echo "Copied ssh public key to clipboard (rsa)."
    else
      echo -n 'No rsa key found, create one? (y/n): '
      read -k 1
      if [ "$REPLY" = "y" ]; then
        ssh-keygen -t rsa -b 4096 -C
        cat "$HOME/.ssh/id_rsa.pub" | xclip -selection clipboard
        echo "Copied ssh public key to clipboard (rsa)."
      fi
    fi
  else
    if [ -f "$HOME/.ssh/id_ed25519.pub" ]; then
      cat "$HOME/.ssh/id_ed25519.pub" | xclip -selection clipboard
      echo "Copied ssh public key to clipboard (ed25519)."
    else
      echo -n 'No ed25519 key found, create one? (y/n): '
      read -k 1
      if [ "$REPLY" = "y" ]; then
        ssh-keygen -t ed25519 -C
        cat "$HOME/.ssh/id_ed25519.pub" | xclip -selection clipboard
        echo "Copied ssh public key to clipboard (ed25519)."
      fi
    fi
  fi
}
