#!/bin/bash

yay -S alacritty dunst mpv code gnome-keyring spotify polybar-spotify-module polybar-spotify-git numix-circle-icon-theme numix-icon-theme-git light lightdm i3lock-color-git picom i3-gaps-rounded-git capitaine-cursors gtk3 bashtop nautilus code-marketplace
echo "[x] Instalation done"

#settings.ini
doas mv /etc/gtk-3.0/settings.ini  /etc/gtk-3.0/settings.ini.old
doas mv settings.ini /etc/gtk-3.0/settings.ini
mv settings.ini ~/.config/gtk-3.0/settings.ini
echo "[x] Themes set"

#alacritty
mkdir ~/.config/alacritty
mv alacritty.yaml ~/.config/alacritty/
echo "[x] Alacritty done"

#dunst
mkdir ~/.config/dunst
mv dunstrc ~/.config/dunst/
echo "[x] Dunst done"

#polybar
mkdir ~/.config/polybar
mv ./polybar/ ~/.config/
echo "[x] Polybar done"

#i3
mv ./i3 ~/.config/
echo "[x] I3 config load"

#picom
mv ./picom ~/.config/
echo "[x] Picom set"

#bashtop
mv ./dark_peach.theme ~/.config/bashtop/user_themes
echo "[x] Bashtop theme added"

#scripts
mv ./skrypty ~/.config/
echo "[x] Scripts loaded"

#common
mkdir Dokumenty Pobrane Zdjecia Wideo
echo "[x] Create directories"

#set custom css
chrome=`find ~/.mozilla/ -name "userChrome.css"`
mv ./userChrome.css $chrome
echo "[x] Added custom firefox theme"

