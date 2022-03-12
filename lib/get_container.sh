#!/data/data/com.termux/files/usr/bin/env bash
tl1="Please wait"
lbl1="Installing Alpine Container (in $PREFIX/var/lib/proot-distro/installed-rootfs/alpine)"
proot-distro install alpine | zenity --progress --title="$tl1" --text="$lbl1" --pulsate
cp $PREFIX/opt/proot-launcher/lib/alpine/exec-app.sh $PREFIX/var/lib/proot-distro/installed-rootfs/alpine/bin/exec-app
ln -s $HOME $PREFIX/var/lib/proot-distro/installed-rootfs/alpine/root/termux-home
zenity --info --text="Done."
