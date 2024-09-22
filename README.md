# Reboot to Windows
This program allows the user to quickly reboot to Windows from Linux, without needing to use the boot menu to select your Windows partition.
This is useful if you are an impatient person with a slow-booting PC, as you can open the 'Windows' application from your desktop, do something else, and in a short while the Windows login screen will be displayed.
This is in contrast to a regular reboot which requires the user to select 'Windows Boot Manager' from the boot screen after rebooting, requiring supervision of the computer so that Linux doesn't automatically boot again after a timeout.

This program only works on UEFI systems.
Does not require use of GRUB, and can be used with systemd-boot too.

## How to use
1. Clone this repository:
```
git clone https://github.com/Wartybix/Reboot-To-Windows
```
Alternatively, you can download from the [releases section](https://github.com/Wartybix/Reboot-To-Windows/releases).

2. Navigate to the new repository:
```
cd Reboot-To-Windows/
```

3. Inspect the source code as usual before running random scripts from the internet.

3. Once happy, run the installer. To install the program locally, run `install_user.sh`. To install the program for all users, run `install_root.sh` (requires root permissions).

The 'Windows' app should now be available in your desktop environment.

### Uninstall
If you want to remove this program, run the uninstaller in the repository folder.
To uninstall a local installation, run `uninstall_from_user.sh`.
To uninstall the program for all users, run `uninstall_from_root.sh`.

# Attributions
Thank you to Wikimedia Commons for hosting [the file for the Windows logo](https://en.m.wikipedia.org/wiki/File:Windows_logo_-_2021.svg), which is used as the icon for this program's `.desktop` file.

