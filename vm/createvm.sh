virt-install   --name centos7   --memory 1024   --vcpus 1   --disk size=10  --location /var/lib/libvirt/boot/CentOS-7-x86_64-Minimal-1810.iso --os-variant centos7.0 --initrd-inject /var/lib/libvirt/boot/ks_centos.cfg --extra-args="ks=file:/ks_centos.cfg console=tty0 console=ttyS0,115200n8" 