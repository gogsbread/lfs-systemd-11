tar -xf $LFS/sources/libtool-2.4.6.tar.xz -C /tmp/
mv -v /tmp/libtool-2.4.6 /tmp/libtool
cd /tmp/libtool

./configure --prefix=/usr

make
make check
make install

rm -fv /usr/lib/libltdl.a

rm -rf /tmp/libtool
