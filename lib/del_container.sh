#!/data/data/com.termux/files/usr/bin/env bash

WTXT="Are you sure you want to delete the container? ALL YOUR DATA saved on it will be lost"

if zenity --question --text="$WTXT"; then
	tl1="Please wait"
	lbl1="Uninstalling Alpine Container..."
	proot-distro remove alpine | zenity --progress --title="$tl1" --text="$lbl1" --pulsate
	zenity --info --text="Done."
else
	zenity --info --text="Cancel"
	exit
fi
