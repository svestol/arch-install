# set keyboard layout
loadkeys no-latin1

systemctl enable dhcpdc
systemgit push -u origin masterctl start dhcpd

timedatectl set-ntp true

echo "make partitions"
