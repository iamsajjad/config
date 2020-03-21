sudo dnf install kernel-modules-extra
sudo dnf install joystick

# Xbox one Controller
sudo dnf install sysfsutils
sudo vim /etc/sysfs.conf
# add '/module/bluetooth/parameters/disable_ertm=1' at the end
#jstest /dev/input/js0

#play around bluetooth
sudo echo 1 > /sys/module/bluetooth/parameters/disable_ertm
bluetoothctl
scan on
pair xxx (the Mac of the controller)
connect xxx (the mac of the controller)
