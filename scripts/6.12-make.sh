tar -xf $LFS/sources/make-4.3.tar.gz -C /tmp/
mv -v /tmp/make-4.3 /tmp/make
cd /tmp/make

./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install

rm -rf /tmp/make
