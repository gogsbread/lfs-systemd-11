tar -xf $LFS/sources/bison-3.7.6.tar.xz -C /tmp/
mv -v /tmp/bison-3.7.6 /tmp/bison
cd /tmp/bison

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.7.6

make
make check
make install

rm -rf /tmp/bison
