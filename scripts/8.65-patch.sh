tar -xf $LFS/sources/patch-2.7.6.tar.xz -C /tmp/
mv -v /tmp/patch-2.7.6 /tmp/patch
cd /tmp/patch

./configure --prefix=/usr

make
make check
make install

rm -rf /tmp/patch