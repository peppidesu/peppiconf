export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto 

ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"     
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
# export ARCHFLAGS="-arch x86_64"

plugins=(
  git 
  gh 
  rust 
  python 
  pip 
  docker 
  docker-compose
  archlinux
  systemd
  pnpm
  node
)

source $ZSH/oh-my-zsh.sh
