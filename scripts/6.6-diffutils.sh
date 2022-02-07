tar -xf $LFS/sources/diffutils-3.8.tar.xz -C /tmp/
mv -v /tmp/diffutils-3.8 /tmp/diffutils
cd /tmp/diffutils

./configure --prefix=/usr --host=$LFS_TGT

make
make DESTDIR=$LFS install

rm -rf /tmp/diffutils