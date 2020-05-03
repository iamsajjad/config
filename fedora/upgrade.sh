
# from https://www.cyberciti.biz/faq/upgrade-fedora-31-to-fedora-32-using-the-cli/

# Create a backup of your Fedora server or cloud box/VM.
# Upgrade all installed packages of Fedora version 31 by running 
sudo dnf upgrade --refresh

# Reboot the Fedora Linux system by tying the sudo reboot command if kernel update was installed.
# Install the Fedora update utility, run: 
sudo dnf install dnf-plugin-system-upgrade

# Start the upgrade procedure and download packages, run:
sudo dnf system-upgrade download --releasever=32

# Reboot the box and complete upgrade, run:
sudo dnf system-upgrade reboot

#Verify upgrades

