alias zshconfig="nvim ~/.zshrc"
alias zshreload="source ~/.zshrc"

# ssh kitten
if command -v kitten > /dev/null; then
    alias ssh="kitten ssh"
fi

# auto update
alias syncconf="git -C $(dirname "$0") pull"

# grc
if command -v grc > /dev/null; then 
    alias ping="grc ping"
    alias netstat="grc netstat"
    alias ip="grc ip"
    alias nmap="grc nmap"
fi

# bat
if command -v bat > /dev/null; then
    alias cat="bat"
fi

# lsd
if command -v ls > /dev/null; then
    alias ls="lsd"
    alias l="lsd -la"
fi
