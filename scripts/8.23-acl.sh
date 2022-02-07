tar -xf $LFS/sources/acl-2.3.1.tar.xz -C /tmp/
mv -v /tmp/acl-2.3.1 /tmp/acl
cd /tmp/acl

./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.3.1

make
make install

rm -rf /tmp/acl