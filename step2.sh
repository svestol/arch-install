mkfs.ext4 /dev/sda3
mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2

mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

pacstrap /mnt base base-devel

genfstab -L /mnt >> /mnt/etc/fstab

arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Europe/Oslo /etc/localtime
hwclock --systohc

rm /etc/locale.gen
echo "en_US.UTF-8" > /etc/locale.gen
echo "UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "KEYMAP=no-latin1" > /etc/vconsole.conf

echo "nzxtarch" > /etc/hostname

echo "127.0.0.1 localhost" > /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.0.1 nzxtarch.localdomain nzxtarch" >> /etc/hosts

passwd
