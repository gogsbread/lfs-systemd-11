tar -xf $LFS/sources/automake-1.16.4.tar.xz -C /tmp/
mv -v /tmp/automake-1.16.4 /tmp/automake
cd /tmp/automake

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.4

make
make -j4 check
make install

rm -rf /tmp/automake

