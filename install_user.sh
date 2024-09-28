#!/bin/sh

mkdir -p ~/.local/share/icons/
cp icons/reboot-to-windows.svg ~/.local/share/icons/ # Icon
mkdir -p ~/.local/bin/
cp reboot-to-windows.sh ~/.local/bin/ # Executable
mkdir -p ~/.local/share/applications/
cp wartybix-windows-user.desktop ~/.local/share/applications/ # Desktop file

sh kde_check.sh
