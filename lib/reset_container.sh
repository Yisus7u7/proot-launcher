#!/data/data/com.termux/files/usr/bin/env bash
tl1="Please wait"
lbl1="Reinstalling Alpine Container (in $PREFIX/var/lib/proot-distro/installed-rootfs/alpine)"
proot-distro reset alpine | zenity --progress --title="$tl1" --text="$lbl1" --pulsate

zenity --info --text="Done."
