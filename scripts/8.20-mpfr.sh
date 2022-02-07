tar -xf $LFS/sources/mpfr-4.1.0.tar.xz -C /tmp/
mv -v /tmp/mpfr-4.1.0 /tmp/mpfr
cd /tmp/mpfr

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.1.0

make
make html

make check
make install
make install-html

rm -rf /tmp/mpfr