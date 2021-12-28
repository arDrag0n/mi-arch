#!/bin/sh
# Boot into installaion medium install and mount the installtion drive
# fdisk for partitioning
# mkfs.ext4 /dev/sdax to format drive
# e.g mount /dev/sda1 /mnt
# Execute pacstrap
# pacstrap /mnt base linux linux-firmware
# arch-chroot /mnt
# genfstab -U /mnt >> /mnt/etc/fstab
# In Arch-Chroot execute this
pacman -Syu && pacman -S nmcli grub efibootmgr
nmcli dev wifi
read -e -i "nmcli dev wifi connect " && eval "$REPLY"
ln -sf /usr/share/zoneinfo/Asia/Karachi /etc/localtime
hwclock --systohc
read -e -i "echo '' >> /etc/hostname" && eval "$REPLY"
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8 UTF-8" >> /etc/locale.conf
mkinitcpio -P
passwd
#For BIOS Systems
read -e -i "grub-install --target=i386-pc /dev/sda" && eval "$REPLY"
read -e -i "grub-mkconfig -o /boot/grub/grub.cfg" && eval "$REPLY"
