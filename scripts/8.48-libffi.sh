tar -xf $LFS/sources/libffi-3.4.2.tar.gz -C /tmp/
mv -v /tmp/libffi-3.4.2 /tmp/libffi
cd /tmp/libffi

./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native \
            --disable-exec-static-tramp

make
make check
make install

rm -rf /tmp/libffi
