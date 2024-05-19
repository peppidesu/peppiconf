source "$(dirname "$0")/p10k.zsh"
source "$(dirname "$0")/lsd.zsh"
source "$(dirname "$0")/sshpubkey.zsh"
source "$(dirname "$0")/config_alias.zsh"
source "$(dirname "$0")/editor.zsh"

export VISUAL=nano
export EDITOR=nano
export PAGER=most

alias ssh="kitten ssh"

export VISUAL=code
export EDITOR=code
export PAGER=less

# alias clip="gpaste-client"
