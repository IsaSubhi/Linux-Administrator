# Question 4 [10 points]
#
# You connected a usb drive, for some reasons, it didn't mount automatically.
# the device name for the drive partition is /dev/sdb1 and the file system is fat32.
#
# explain how you would create a directory in your home folder called "usb" and mount
# the usb-drive to that folder.
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

mkdir ~Desktop/usb  -> to creat a mounting folder
mount -t vfat /dev/sdb1 ~Desktop/usb  -> to mount the usb, t to choose a file system and vfat is for fat32.