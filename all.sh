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
export LS_COLORS="ow=03;94:no=02;37:fi=00;33:di=01;36:ln=04;35:pi=40;33:so=01;35:bd=43;93"

# default editors and pagers
export VISUAL=nvim
export EDITOR=nvim
export PAGER=most

esc=$(printf \\033)
export LESS_TERMCAP_mb="${esc}[01;33m"       # begin blinking
export LESS_TERMCAP_md="${esc}[01;31m"       # begin bold
export LESS_TERMCAP_me="${esc}[0m"           # end all mode like so, us, mb, md, mr
export LESS_TERMCAP_se="${esc}[0m"           # end standout-mode
export LESS_TERMCAP_so="${esc}[45;92m"       # start standout mode
export LESS_TERMCAP_ue="${esc}[0m"           # end underline
export LESS_TERMCAP_us="${esc}[4;36m"        # start underlining

# used to forward ssh-agent socket
export SSH_AUTH_SOCK=/run/user/1000/ssh-agent.socket

export PATH=$PATH:$HOME/.cargo/bin
export RUSTC_WRAPPER=sccache
