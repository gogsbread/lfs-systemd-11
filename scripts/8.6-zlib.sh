tar -xf $LFS/sources/zlib-1.2.11.tar.xz -C /tmp/
mv -v /tmp/zlib-1.2.11 /tmp/zlib
cd /tmp/zlib

./configure --prefix=/usr

make 
make check
make install

rm -fv /usr/lib/libz.a

rm -rf /tmp/zlib