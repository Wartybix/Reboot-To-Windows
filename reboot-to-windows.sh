#TODO: Add functionality to dynamically detect the bootnum of the Windows partition.

set -e #Halts the program if error occurs (i.e., not getting sudo permission)

pkexec efibootmgr -n 0000

case $DESKTOP_SESSION in
	"gnome")
		gnome-session-quit --reboot
	"kde")
		qdbus org.kde.ksmserver /KSMServer logout 1 1 1
	*)
		reboot