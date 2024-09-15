#!/bin/bash

mkdir -p ~/.icons
cp windows_logo.png ~/.icons # Icon
mkdir -p ~/.local/bin/
cp reboot-to-windows.sh ~/.local/bin # Executable
cp wartybix-windows-user.desktop ~/.local/share/applications # Desktop file

bash kde_check.sh