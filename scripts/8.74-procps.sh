tar -xf $LFS/sources/procps-ng-3.3.17.tar.xz -C /tmp/
mv -v /tmp/procps-ng-3.3.17 /tmp/procps
cd /tmp/procps

./configure --prefix=/usr                            \
            --docdir=/usr/share/doc/procps-ng-3.3.17 \
            --disable-static                         \
            --disable-kill                           \
            --with-systemd

make
make check
make install

rm -rf /tmp/procps