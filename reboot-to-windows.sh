#!/bin/bash

set -e #Halts the program if error occurs (i.e., not getting sudo permission)

# Gets list of boot options.
# Then searches for line containing 'Windows' in these options (case
# insensitive).
# Gets the 'Boot____*' value of this line.
# Extracts the 4-digit number from this value.
# If unsuccessful, the variable is set to -1.
WINDOWS_BOOT_NUMBER=efibootmgr | grep -i Windows | grep -Eo "Boot(.*?\*)" | grep -Eo "[0-9]{4}" || echo -1

if [ $WINDOWS_BOOT_NUMBER==-1 ]; then
	notify-send -a Windows "Reboot Unsuccessful" \
	"The Windows boot option was not found on the system."
	exit 1
fi

pkexec efibootmgr -n $WINDOWS_BOOT_NUMBER

case $DESKTOP_SESSION in
	gnome)
		gnome-session-quit --reboot ;;
	plasma)
		qdbus org.kde.LogoutPrompt /LogoutPrompt promptReboot ;;
	*)
		reboot ;;
esac