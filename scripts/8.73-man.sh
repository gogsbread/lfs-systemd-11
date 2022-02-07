tar -xf $LFS/sources/man-db-2.9.4.tar.xz -C /tmp/
mv -v /tmp/man-db-2.9.4 /tmp/mandb
cd /tmp/mandb

./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.9.4 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --enable-cache-owner=bin             \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap

make
make check
make install

rm -rf /tmp/mandb