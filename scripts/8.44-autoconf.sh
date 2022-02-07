tar -xf $LFS/sources/autoconf-2.71.tar.xz -C /tmp/
mv -v /tmp/autoconf-2.71 /tmp/autoconf
cd /tmp/autoconf

./configure --prefix=/usr

make
make check
make install

rm -rf /tmp/autoconf
