tar -xf $LFS/sources/gzip-1.10.tar.xz -C /tmp/
mv -v /tmp/gzip-1.10 /tmp/gzip
cd /tmp/gzip

./configure --prefix=/usr --host=$LFS_TGT

make
make DESTDIR=$LFS install

rm -rf /tmp/gzip