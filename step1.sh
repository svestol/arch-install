# set keyboard layout
loadkeys no-latin1

systemctl enable dhcpdc
systemctl start dhcpd

timedatectl set-ntp true

echo "make partitions"
