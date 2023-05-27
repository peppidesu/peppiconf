#!/bin/zsh
cd "$(dirname "$0")"

source ./p10k.zsh
source ./lsd.zsh
source ./kitty_sshfix.zsh
source ./sshpubkey.zsh
source ./config_alias.zsh
source ./omz.zsh

export VISUAL=code
export EDITOR=code
export PAGER=most

cd ~