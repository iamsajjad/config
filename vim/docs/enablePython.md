
# Compile Vim With Python

```
sudo ./configure --with-features=huge \
                            --enable-pythoninterp=yes \
                            --with-python-config-dir=/usr/lib/python2.7/config \
                            --enable-python3interp=yes \
                            --with-python3-config-dir=/usr/lib/python3.8/config-3.8-x86_64-linux-gnu
```

```
make
sudo make install
```
