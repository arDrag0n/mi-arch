#!/usr/bin/env bash
pacman -Syu
pacman -S --needed sudo git base-devel
cd /opt && git clone https://aur.archlinux.org/yay-git.git && cd yay-git && cd -
makepkg -si
yay -S --needed svn curl spotify evince brave firefox
