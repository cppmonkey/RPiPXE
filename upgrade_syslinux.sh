wget http://ftp.debian.org/debian/pool/main/s/syslinux/syslinux-common_6.03+dfsg-5_all.deb
wget http://ftp.debian.org/debian/pool/main/s/syslinux/syslinux-efi_6.03+dfsg-5_all.deb

sudo dpkg -i syslinux-*6.03+dfsg-5_all.deb

mkdir /srv/tftpboot/EFIx64
cp /usr/lib/SYSLINUX.EFI/efi64/syslinux.efi /srv/tftpboot/EFIx64
mkdir /srv/tftpboot/EFIx32
cp /usr/lib/SYSLINUX.EFI/efi32/syslinux.efi /srv/tftpboot/EFIx32

cp /usr/lib/syslinux/modules/bios/ldlinux.c32 /srv/tftpboot
cp /usr/lib/syslinux/modules/bios/menu.c32 /srv/tftpboot
