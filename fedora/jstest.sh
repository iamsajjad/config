sudo dnf install kernel-modules-extra
sudo dnf install joystick
#jstest /dev/input/js0

# Xbox one Controller
sudo dnf install sysfsutils
# replace N to 1 in this file'/module/bluetooth/parameters/disable_ertm'
sudo echo 1 > /sys/module/bluetooth/parameters/disable_ertm

#play around bluetooth
bluetoothctl
scan on
remove xxx (the Mac of the controller)
pair xxx (the Mac of the controller)
trust xxx (the Mac of the controller)
connect xxx (the mac of the controller)
