#!/data/data/com.termux/files/usr/bin/env bash
xhost +
APP=$(zenity --entry --title="Set app" --text="Enter program name to execute")
proot-distro login --shared-tmp alpine -- exec-app $APP
