tar -xf $LFS/sources/gawk-5.1.0.tar.xz -C /tmp/
mv -v /tmp/gawk-5.1.0 /tmp/gawk
cd /tmp/gawk

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./config.guess)

make
make DESTDIR=$LFS install

rm -rf /tmp/gawk