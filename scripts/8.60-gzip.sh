tar -xf $LFS/sources/gzip-1.10.tar.xz -C /tmp/
mv -v /tmp/gzip-1.10 /tmp/gzip
cd /tmp/gzip

./configure --prefix=/usr

make
make check
make install

rm -rf /tmp/gzip