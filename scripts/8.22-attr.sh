tar -xf $LFS/sources/attr-2.5.1.tar.gz -C /tmp/
mv -v /tmp/attr-2.5.1 /tmp/attr
cd /tmp/attr

./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.1

make
make check
make install

rm -rf /tmp/attr
