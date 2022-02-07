tar -xf $LFS/sources/findutils-4.8.0.tar.xz -C /tmp/
mv -v /tmp/findutils-4.8.0 /tmp/findutils
cd /tmp/findutils

./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install

rm -rf /tmp/findutils