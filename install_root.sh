#!/bin/bash

sudo mkdir -p /usr/share/reboot-to-windows # Supporting files
sudo cp windows_logo.png /usr/share/reboot-to-windows/ # Icon
sudo cp reboot-to-windows.sh /usr/bin/reboot-to-windows # Executable
sudo cp wartybix-windows-root.desktop /usr/share/applications/ # Desktop file

bash kde_check.sh