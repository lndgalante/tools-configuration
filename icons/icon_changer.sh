#!/bin/bash

echo "+--------------------------------+"
echo "| Big Sur Icon Changer by HueZuX |"
echo "+--------------------------------+"

echo ""
echo "Root password will be required. To enable root user, see:"
echo "https://support.apple.com/en-us/HT204012"
echo ""

IS_CSRUTIL_DISABLED=$(csrutil status | egrep -oh '(en|dis)abled')
IS_AUTH_ROOT_DISABLED=$(csrutil authenticated-root status | egrep -oh '(en|dis)abled')

if [ $IS_CSRUTIL_DISABLED == 'enabled' ] || [ $IS_AUTH_ROOT_DISABLED == 'enabled' ]
then
  echo "ERROR: In order to proceed, you must boot into Recovery Mode and enter the following in Terminal, then reboot back to macOS:"
  echo ""
  echo "  csrutil disable"
  echo "  csrutil authenticated-root disable"
  echo ""
  echo "Your current settings are:"
  echo ""
  echo "  csrutil disable $IS_CSRUTIL_DISABLED"
  echo "  csrutil authenticated-root $IS_AUTH_ROOT_DISABLED"
  echo ""
  echo "Exiting..."
  exit 1
fi

echo "What do you want to change?"
echo "  [1] System Application Icons"
echo "  [2] Folder Icons"
echo "  [3] Change Finder Icon"
echo ""

printf "[Choose between 1, 2 or 3. Just type the number.]: "
read selection

if [ $selection != '1' ] && [ $selection != '2' ] && [ $selection != '3' ]
then
  echo ""
  echo "Invalid Selection. Exiting..."
  exit 1
fi

mkdir -p /tmp/mount
ROOT_DISK=$(mount | head -1 | egrep -oh '/dev/disk[0-9]s[0-9]')
TMP_MOUNT=$(df -h /tmp/mount | egrep -oh '/dev/disk[0-9]s[0-9]')


if [ $ROOT_DISK == $TMP_MOUNT ]
then
  echo ""
  echo "System Volume at $ROOT_DISK is already mounted to /tmp/mount. Skipping..."
  echo ""
else
  echo ""
  echo "Mounting System Volume at $ROOT_DISK to /tmp/mount..."
  sudo mount -o nobrowse -t apfs $ROOT_DISK /tmp/mount
  echo ""
fi

if [ $selection == '1' ]
then
  echo "Opened a Finder window to System Applications. You can now customize icons either by:"
  open /tmp/mount/System/Applications/
  echo ""
  echo "  1) Right clicking an app, \"Get Info\", and drag a replacement icon"
  echo ""
  echo "  -- or --"
  echo ""
  echo "  2) Right clicking an app, \"Show Package Contents\" > \"Contents\" > \"Resources\", and replace \"AppIcon.icns\""
  echo ""
fi

if [ $selection == '2' ]
then
  echo "Opened a Finder window to Assets.car. To change folder icons, edit it using ThemeEngine, available here:"
  echo "  https://github.com/alexzielenski/ThemeEngine/releases/tag/1.0.0(111)"
  open /tmp/mount/System/Library/PrivateFrameworks/IconFoundation.framework/Versions/A/Resources/
  echo ""
fi

if [ $selection == '3' ]
then
  echo "Note: BE SURE TO MAKE A BACK-UP FROM THOSE 2 FILES!!!:"
  echo " "
  echo "The folder with resources from Dock.app just opened. Replace the finder.png and finder@2x.png files with yours."
  open /tmp/mount/System/Library/CoreServices/Dock.app/Contents/Resources
  echo ""
fi

read -n 1 -s -r -p "When you're done making changes, press any key to continue..."

echo ""
echo ""

echo "WARNING: By committing these changes, the System Volume will not longer by bootable on computers that have SIP (System Integrity Production) or SSV (Signed System Volume) checks enabled. This script has determined that both are currently disabled. Do you wish to continue?"
echo ""

printf "[Y/N]: "
read selection

if [ $selection == 'Y' ] || [ $selection == 'y' ] || [ $selection == 'Yes' ] || [ $selection == 'yes' ]
then
  echo ""
  echo "Creating a new snapshot to write changes to disk..."
  sudo bless --folder /tmp/mount/System/Library/CoreServices --bootefi --create-snapshot
  echo "Flushing the icon cache..."
  sudo rm -rfv /Library/Caches/com.apple.iconservices.store > /dev/null 2>&1
  sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm -rf {} \; > /dev/null 2>&1
  sudo find /private/var/folders/ -name com.apple.iconservices -exec rm -rf {} \; > /dev/null 2>&1
  sudo umount -f /tmp/mount > /dev/null 2>&1
  echo ""
  echo "Please reboot your computer for changes to take effect."
else
  sudo umount -f /tmp/mount > /dev/null 2>&1
  echo ""
  echo "Cancelling changes..."
fi