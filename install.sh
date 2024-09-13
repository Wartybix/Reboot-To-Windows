sudo mkdir -p /usr/share/reboot-to-windows # Supporting files
sudo cp windows_logo.png /usr/share/reboot-to-windows/ # Icon
sudo cp reboot-to-windows.sh /usr/local/bin/ # Executable
sudo cp wartybix-windows.desktop /usr/share/applications/ # Desktop file

if [ $DESKTOP_SESSION == plasma ]; then # If user running KDE Plasma:
	echo "Ensure the 'qt' package or similar is installed from your package manager to provide support for KDE's reboot prompt."
fi
