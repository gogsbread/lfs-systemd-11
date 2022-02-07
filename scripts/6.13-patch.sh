tar -xf $LFS/sources/patch-2.7.6.tar.xz -C /tmp/
mv -v /tmp/patch-2.7.6 /tmp/patch
cd /tmp/patch

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make install DESTDIR=$LFS install

rm -rf /tmp/patch
