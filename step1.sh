# set keyboard layout
loadkeys no-latin1

servicectl enable dhcpdc
servicectl start dhcpd

timedatectl set-ntp true

echo "make partitions"
