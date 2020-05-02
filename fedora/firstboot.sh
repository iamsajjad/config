
# Theme, font ...
sudo dnf -y install gnome-tweak-tool

# Vim
sudo dnf -y install vim

# To Create Bootable USB Stick Using ISO File
sudo dnf -y install mediawriter

# Packages
sudo dnf -y install make
sudo dnf -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libevent-devel sqlite-devel

# install google chrome
sudo dnf -y install fedora-workstation-repositories
sudo dnf -y config-manager --set-enabled google-chrome
sudo dnf -y install google-chrome-stable

