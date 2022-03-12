#!/data/data/com.termux/files/usr/bin/env bash

APP=$(zenity --entry --title="Set app" --text="Enter program name to install")

#tl1="Progress"
#lbl1="Installing package \"$APP\"..."
proot-distro login alpine -- apk add $APP

zenity --info --text='Done.'
