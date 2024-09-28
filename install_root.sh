#!/bin/sh

sudo cp icons/reboot-to-windows.svg /usr/share/pixmaps/ # Icon
sudo cp reboot-to-windows.sh /usr/bin/reboot-to-windows # Executable
sudo cp wartybix-windows-root.desktop /usr/share/applications/ # Desktop file

sh kde_check.sh
