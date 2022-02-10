pacman -Syu
pacman -S --needed sudo git base-devel
cd /opt && git clone https://aur.archlinux.org/yay-git.git && cd yay-git
makepkg -si
yay
yay -S --needed svn curl spotify
