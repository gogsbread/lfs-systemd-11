tar -xf $LFS/sources/check-0.15.2.tar.gz -C /tmp/
mv -v /tmp/check-0.15.2 /tmp/check
cd /tmp/check

./configure --prefix=/usr --disable-static

make
make check
make docdir=/usr/share/doc/check-0.15.2 install

rm -rf /tmp/check
