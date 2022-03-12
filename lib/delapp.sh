#!/data/data/com.termux/files/usr/bin/env bash

APP=$(zenity --entry --title="Set app" --text="Enter program name to Uninstall")

proot-distro login alpine -- apk del $APP
proot-distro login alpine -- apk cache clean
zenity --info --text="Done."
