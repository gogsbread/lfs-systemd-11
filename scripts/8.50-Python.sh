tar -xf $LFS/sources/Python-3.9.6.tar.xz -C /tmp/
mv -v /tmp/Python-3.9.6 /tmp/Python
cd /tmp/Python

./configure --prefix=/usr        \
            --enable-shared      \
            --with-system-expat  \
            --with-system-ffi    \
            --with-ensurepip=yes \
            --enable-optimizations

make
make install
install -v -dm755 /usr/share/doc/python-3.9.6/html 

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.9.6/html \
    -xvf sources/python-3.9.6-docs-html.tar.bz2

rm -rf /tmp/Python
