#!/data/data/com.termux/files/usr/bin/env bash

DNS1="nameserver 8.8.8.8"
DNS2="nameserver 8.8.4.4"

DNS_FILE="/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/alpine/etc/resolv.conf"

echo $DNS1 > $DNS_FILE
echo $DNS2 >> $DNS_FILE

zenity --info --text="Done."
