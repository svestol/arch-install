# set keyboard layout
loadkeys no-latin1

systemctl enable dhcpcd
systemctl start dhcpcd

timedatectl set-ntp true

echo "make partitions"
