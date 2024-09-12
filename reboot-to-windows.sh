set -e #Halts the program if error occurs (i.e., not getting sudo permission)

sudo -A efibootmgr -n 0000
gnome-session-quit --reboot