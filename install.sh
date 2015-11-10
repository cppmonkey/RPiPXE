apt-get install syslinux-common dnsmasq

[ -d /srv/tftpboot ] || mkdir /srv/tftpboot
[ -d /srv/tftpboot/pxelinux.cfg ] || mkdir /srv/tftpboot/pxelinux.cfg
[ -d /srv/tftpboot/nfs ] || mkdir /srv/tftpboot/nfs
[ -d /srv/tftpboot/iso ] || mkdir /srv/tftpboot/iso
chmod 777 /srv/tftpboot/nfs
chmod 777 /srv/tftpboot/iso

[ -f /srv/tftpboot/pxelinux.cfg/default ] || cp pxelinux.cfg/default /srv/tftpboot/pxelinux.cfg/
[ -f /srv/tftpboot/pxelinux.cfg/x64 ] || pxelinux.cfg/x64/x64 /srv/tftpboot/pxelinux.cfg/
[ -f /srv/tftpboot/pxelinux.cfg/x86 ] || pxelinux.cfg/x86/x86 /srv/tftpboot/pxelinux.cfg/

[ -f /srv/tftpboot/pxelinux.0 ] || ln /usr/lib/syslinux/pxelinux.0 /srv/tftpboot/pxelinux.0
[ -f /srv/tftpboot/menu.c32 ] || ln /usr/lib/syslinux/menu.c32 /srv/tftpboot/menu.c32
