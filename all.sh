# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LD_PRELOAD=""

source "$(dirname "$0")/p10k.sh"
source "$(dirname "$0")/omz.sh"
source "$(dirname "$0")/sshpubkey.sh"
source "$(dirname "$0")/alias.sh"

# ls colors
export LS_COLORS="ow=03;94:no=02;37:fi=00;93:di=01;34:ln=04;36:pi=40;33:so=01;35:bd=43;93"

# default editors and pagers
export VISUAL=nvim
export EDITOR=nvim
export PAGER=less

# used to forward ssh-agent socket
export SSH_AUTH_SOCK=/run/user/1000/ssh-agent.socket

export PATH=$PATH:$HOME/.cargo/bin
export RUSTC_WRAPPER=sccache
