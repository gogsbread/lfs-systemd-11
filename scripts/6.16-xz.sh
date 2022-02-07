tar -xf $LFS/sources/xz-5.2.5.tar.xz -C /tmp/
mv -v /tmp/xz-5.2.5 /tmp/xz
cd /tmp/xz

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.2.5

make
make DESTDIR=$LFS install

rm -rf /tmp/xz