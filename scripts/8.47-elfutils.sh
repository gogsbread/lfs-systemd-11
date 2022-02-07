
tar -xf $LFS/sources/elfutils-0.185.tar.bz2 -C /tmp/
mv -v /tmp/elfutils-0.185 /tmp/elfutils
cd /tmp/elfutils

./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy

make
make check

make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a

rm -rf /tmp/elfutils