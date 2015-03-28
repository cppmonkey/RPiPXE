sudo apt-get install syslinux-common dnsmasq nfs-kernel-server


sudo mkdir /srv/tftpboot
sudo chmod a+w /srv/tftpboot

cp /usr/lib/syslinux/pxelinux.0 /srv/tftpboot
cp /usr/lib/syslinux/menu.c32 /srv/tftpboot

mkdir /srv/tftpboot/pxelinux.cfg
touch /srv/tftpboot/pxelinux.cfg/default

mkdir /srv/tftpboot/nfs
mkdir /srv/tftpboot/nfs/x64
mkdir /srv/tftpboot/nfs/x86
