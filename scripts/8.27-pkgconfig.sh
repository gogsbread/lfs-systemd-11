tar -xf $LFS/sources/pkg-config-0.29.2.tar.gz -C /tmp/
mv -v /tmp/pkg-config-0.29.2 /tmp/pkgconfig
cd /tmp/pkgconfig

./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2

make
make check
make install

rm -rf /tmp/pkgconfig
