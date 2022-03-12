#!/data/data/com.termux/files/usr/bin/env bash

APP=$(zenity --entry --title="Set app" --text="Enter program name to execute")

SCREEN=$DISPLAY
proot-distro login --isolated --shared-tmp alpine -- exec-app $APP
