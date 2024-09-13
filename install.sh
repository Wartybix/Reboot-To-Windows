sudo mkdir -p /usr/share/reboot-to-windows # Supporting files
sudo cp windows_logo.png /usr/share/reboot-to-windows/ # Icon
sudo cp reboot-to-windows.sh /usr/local/bin/ # Executable
sudo cp wartybix-windows.desktop /usr/share/applications/ # Desktop file

if [ $DESKTOP_SESSION==plasma ]; then # If user running KDE Plasma:
	# Check for 'qdbus' command. If empty, set to -1.
	QDBUS=command -v qdbus || echo -1
	if [ $QDBUS==-1 ]; then # If qdbus command not found:
		echo "Install the 'qt' package or similar from your package manager to provide support for KDE's reboot prompt."
	fi
fi
