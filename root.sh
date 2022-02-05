pacman -Syu
pacman -S sudo
pacman -S --needed git base-devel
cd /opt && git clone https://aur.archlinux.org/yay-git.git && cd yay-git
makepkg -si
