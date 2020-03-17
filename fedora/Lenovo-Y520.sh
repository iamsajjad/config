
# Wifi Not Work Problem In Linux
# source https://askubuntu.com/a/893442
sudo tee /etc/modprobe.d/blacklist-ideapad.conf <<< "blacklist ideapad_laptop"

