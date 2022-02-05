pacman -Sy && pacman -S git base-devel
cd /opt && git clone https://aur.archlinux.org/yay-git.git && cd yay-git
makepkg -si

