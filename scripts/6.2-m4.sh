tar -xf $LFS/sources/m4-1.4.19.tar.xz -C /tmp/
mv -v /tmp/m4-1.4.19 /tmp/m4
cd /tmp/m4

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install

rm -rf /tmp/m4