tar -xf $LFS/sources/mpc-1.2.1.tar.gz -C /tmp/
mv -v /tmp/mpc-1.2.1 /tmp/mpc
cd /tmp/mpc

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.2.1

make
make html
make check

make install
make install-html

rm -rf /tmp/mpc
