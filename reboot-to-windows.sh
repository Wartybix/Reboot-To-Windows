#TODO: Add functionality to dynamically detect the bootnum of the Windows partition.

set -e #Halts the program if error occurs (i.e., not getting sudo permission)

WINDOWS_BOOT_NUMBER = efibootmgr | \ # Get list of boot options.
grep -i Windows | \ 		     # Search for line containing 'Windows' in
				     # these options (case insensitive).
grep -Eo "Boot(.*?\*)" | \ 	     # Get 'Boot____*' value of this line.
grep -Eo "[0-9]{4}" 		     # Extract the 4-digit number from this
				     # value.

pkexec efibootmgr -n $WINDOWS_BOOT_NUMBER

case $DESKTOP_SESSION in
	"gnome")
		gnome-session-quit --reboot
	"kde")
		qdbus org.kde.ksmserver /KSMServer logout 1 1 1
	*)
		reboot