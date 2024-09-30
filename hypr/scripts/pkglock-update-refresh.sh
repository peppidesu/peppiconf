while inotifywait -e delete,moved_from /var/lib/pacman; do
    pkill -SIGRTMIN+8 waybar
done