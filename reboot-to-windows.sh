#!/bin/bash

#TODO: Add functionality to dynamically detect the bootnum of the Windows partition.

set -e #Halts the program if error occurs (i.e., not getting sudo permission)

# Gets list of boot options.
# Then searches for line containing 'Windows' in these options (case
# insensitive).
# Gets the 'Boot____*' value of this line.
# Extracts the 4-digit number from this value.
WINDOWS_BOOT_NUMBER=efibootmgr | grep -i Windows | grep -Eo "Boot(.*?\*)" | grep -Eo "[0-9]{4}"

pkexec efibootmgr -n $WINDOWS_BOOT_NUMBER

case $DESKTOP_SESSION in
	gnome)
		gnome-session-quit --reboot ;;
	plasma)
		qdbus org.kde.LogoutPrompt /LogoutPrompt promptReboot ;;
	*)
		reboot ;;
esac