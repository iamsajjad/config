sudo dnf install kernel-modules-extra
sudo dnf install joystick

# Xbox one Controller
sudo dnf install sysfsutils
sudo vim /etc/sysfs.conf
# add '/module/bluetooth/parameters/disable_ertm=1' at the end
#jstest /dev/input/js0

