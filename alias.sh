alias zshconfig="nvim ~/.zshrc"
alias zshreload="source ~/.zshrc"
# ssh kitten
if command -v kitten >/dev/null; then
  alias ssh="kitten ssh"
fi

# auto update
alias syncconf="git -C $(dirname "$0") pull"

# grc
if command -v grc >/dev/null; then
  alias ping="grc ping"
  alias netstat="grc netstat"
  alias ip="grc ip"
  alias nmap="grc nmap"
fi

# bat
if command -v bat >/dev/null; then
  alias cat="bat --theme gruvbox-dark"
fi

if command -v zeditor >/dev/null; then
  alias zed=zeditor
fi

# lsd
if command -v lsd >/dev/null; then
  alias ls="lsd"
  alias l="lsd -la"
fi

alias testparrot="curl parrot.live"

export CNG_PATH=/home/peppidesu/dev/contiki-ng
alias contiker="docker run --privileged --sysctl net.ipv6.conf.all.disable_ipv6=0 --mount type=bind,source=$CNG_PATH,destination=/home/user/contiki-ng -e DISPLAY=$DISPLAY -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/bus/usb:/dev/bus/usb -ti contiker/contiki-ng"
