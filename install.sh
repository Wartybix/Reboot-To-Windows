sudo mkdir -p /usr/share/reboot-to-windows
sudo cp windows_logo.png /usr/share/reboot-to-windows/
sudo cp reboot-to-windows.sh /usr/local/bin/
sudo cp wartybix-windows.desktop /usr/share/applications/

if [ $DESKTOP_SESSION == plasma ]; then
	echo "Ensure the 'qt' package or similar is installed from your package manager to provide support for KDE's reboot prompt."
fi