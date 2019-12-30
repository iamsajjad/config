
# imp Packages
sudo dnf install make
sudo dnf install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libevent-devel sqlite-devel

# Vim
sudo dnf install vim

# Snap
sudo dnf install snapd

# install google chrome
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable

# Theme, font ...
sudo dnf install gnome-tweak-tool
