#!/bin/sh

if [ "$DESKTOP_SESSION" = "plasma" ]; then # If user running KDE Plasma:
	# Check for 'qdbus' command. If empty, set to -1.
	QDBUS=`which qdbus 2>/dev/null || echo -1`
	if [ "$QDBUS" = "-1" ]; then # If qdbus command not found:
		echo "Install the 'qt' or 'qt5-tools' or similar package from your package manager to provide support for KDE's reboot prompt."
	fi
fi