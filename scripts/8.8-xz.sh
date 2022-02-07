tar -xf $LFS/sources/xz-5.2.5.tar.xz -C /tmp/
mv -v /tmp/xz-5.2.5 /tmp/xz
cd /tmp/xz

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.5

make
make check
make install

rm -rf /tmp/xz
