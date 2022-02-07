tar -xf $LFS/sources/tar-1.34.tar.xz -C /tmp/
mv -v /tmp/tar-1.34 /tmp/tar
cd /tmp/tar

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install

rm -rf /tmp/tar
