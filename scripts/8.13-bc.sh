tar -xf $LFS/sources/bc-5.0.0.tar.xz -C /tmp/
mv -v /tmp/bc-5.0.0.tar.xz /tmp/bc
cd /tmp/bc

CC=gcc ./configure --prefix=/usr -G -O3

make
make test
make install

rm -rf /tmp/bc