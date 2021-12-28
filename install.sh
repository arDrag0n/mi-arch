#Boot into installaionmedium install and mount the installtion drive
# e.g mount /dev/sda1 /mnt
# execute pacstrap 
# pacstrap /mnt
# In Arch-Chroot execute this
pacman -Syu && pacman -S nmcli

