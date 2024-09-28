#!/bin/sh

if [ $UID == 0 ]; then
	ICON_LOCATION=/usr/share/pixmaps/
	EXECUTABLE_LOCATION=/usr/bin/reboot-to-windows
	DESKTOP_FILE=reboot-to-windows.root.desktop
	DESKTOP_FILE_LOCATION=/usr/share/applications/reboot-to-windows.desktop
else
	ICON_LOCATION=~/.local/share/icons/
	EXECUTABLE_LOCATION=~/.local/bin/
	DESKTOP_FILE=reboot-to-windows.user.desktop
	DESKTOP_FILE_DIR=~/.local/share/applications/
	DESKTOP_FILE_LOCATION=$DESKTOP_FILE_DIR/reboot-to-windows.desktop

	mkdir -p $ICON_LOCATION $EXECUTABLE_LOCATION $DESKTOP_FILE_DIR
fi

cp icons/reboot-to-windows.svg $ICON_LOCATION
cp reboot-to-windows.sh $EXECUTABLE_LOCATION
cp $DESKTOP_FILE $DESKTOP_FILE_LOCATION

sh kde_check.sh
