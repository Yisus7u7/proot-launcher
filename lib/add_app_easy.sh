#!/data/data/com.termux/files/usr/bin/bash
ROOT=$PREFIX/opt/proot-launcher/lib/extra
CONTAINER_EXECUTOR="proot-distro login alpine --"
FMSG="zenity --info --text=Done"
OPTION=$(zenity --list --radiolist --title "Select app" \
	--column "Mark" --column "Program Name" \
	FALSE "firefox-esr" FALSE "libreoffice" FALSE "abiword" FALSE "exit")

if [ $OPTION == "firefox-esr" ]; then
	$CONTAINER_EXECUTOR apk add firefox-esr ttf-dejavu adwaita-icon-theme
	cp $ROOT/firefox/firefox $PREFIX/bin
	cp $ROOT/firefox/org.mozilla.firefox.desktop $PREFIX/share/applications
	$FMSG
	
elif [ $OPTION == "libreoffice" ]; then
	$CONTAINER_EXECUTOR apk add libreoffice ttf-dejavu adwaita-icon-theme
	cp $ROOT/libreoffice/libreoffice $PREFIX/bin
	cp $ROOT/libreoffice/libreoffice.desktop $PREFIX/share/applications
	$FMSG
	
elif [ $OPTION == "abiword" ]; then
	$CONTAINER_EXECUTOR apk add abiword ttf-dejavu adwaita-icon-theme
	$FMSG
	
elif [ $OPTION == "exit" ]; then
	exit

else
	zenity --error
fi
