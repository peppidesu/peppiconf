#!/bin/sh

# set gtk theme
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git /tmp/Colloid-gtk-theme
/tmp/Colloid-gtk-theme/install.sh -c dark -t teal -l --tweaks gruvbox normal
rm -rf /tmp/Colloid-gtk-theme
gsettings set org.gnome.desktop.interface gtk-theme "Colloid-Teal-Dark-Gruvbox"

# set cursor (bibata)
paru -S --noconfirm bibata-cursor-theme-bin
if $? -ne 0; then
  echo "Failed to install bibata cursor theme, please install it manually"
else
  gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Classic"
  gsettings set org.gnome.desktop.interface cursor-size 24
  hyprctl setcursor Bibata-Modern-Classic 24
fi
