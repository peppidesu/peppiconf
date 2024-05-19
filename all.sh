# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LD_PRELOAD=""

source "$(dirname "$0")/p10k.sh"
source "$(dirname "$0")/omz.sh"
source "$(dirname "$0")/lsd.sh"
source "$(dirname "$0")/sshpubkey.sh"
source "$(dirname "$0")/config_alias.sh"


# default editors and pagers
export VISUAL=nvim
export EDITOR=nvim
export PAGER=most

# fix for ssh
alias ssh="kitten ssh"

# used to forward ssh-agent socket
export SSH_AUTH_SOCK=/run/user/1000/ssh-agent.socket
