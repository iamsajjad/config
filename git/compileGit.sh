# Compile Git from sourec code

# need to install some packages
sudo dnf install dh-autoreconf curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel

# for doc need to install
sudo dnf install asciidoc xmlto docbook2X

# install
sudo dnf install getopt

# download git from https://www.kernel.org/pub/software/scm/git

# start install
sudo ln -s /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi
tar -zxf git*
cd git*
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info

#from more info go to https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
