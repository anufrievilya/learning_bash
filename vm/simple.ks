# System authorization information
auth --enableshadow --passalgo=sha512
# Use CDROM installation media
cdrom
# Use graphical install
#graphical
text
# Run the Setup Agent on first boot
firstboot --enable
ignoredisk --only-use=vda
# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8
eula --agreed

# Network information
#network  --bootproto=dhcp --device=enp0s3 --noipv6 --activate
#network --bootproto=static --ip=192.168.122.100 --gateway=192.168.122.1  --netmask=255.255.255.0  --noipv6 --device=eth0 --nameserver=192.168.122.1,8.8.8.8 --activate
#network  --hostname=server1.example.com
network  --bootproto=dhcp --activate

# Root password
rootpw 123
# System services
services --enabled="chronyd"
# System timezone
timezone Europe/Moscow --isUtc
# Partition clearing information
clearpart --all --initlabel --drives=vda
# System bootloader configuration
bootloader --append=" crashkernel=auto" --location=mbr --boot-drive=vda "
#zerombr
autopart --type=lvm
# Reboot after install
reboot --eject

%packages --nobase --ignoremissing
@core
@base
vim
bash-completion

%end
