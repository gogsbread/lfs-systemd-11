tar -xf $LFS/sources/gdbm-1.20.tar.gz -C /tmp/
mv -v /tmp/gdbm-1.20 /tmp/gdbm
cd /tmp/gdbm

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make
make -k check
make install

rm -rf /tmp/gdbm
