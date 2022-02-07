tar -xf $LFS/sources/m4-1.4.19.tar.xz -C /tmp/
mv -v /tmp/m4-1.4.19 /tmp/m4
cd /tmp/m4

./configure --prefix=/usr

make
make check
make install

rm -rf /tmp/m4