tar -xf $LFS/sources/gettext-0.21.tar.xz -C /tmp/
mv -v /tmp/gettext-0.21 /tmp/gettext
cd /tmp/gettext

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21

make
make check
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so

rm -rf /tmp/gettext