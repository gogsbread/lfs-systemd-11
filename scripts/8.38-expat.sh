tar -xf $LFS/sources/expat-2.4.1.tar.xz -C /tmp/
mv -v /tmp/expat-2.4.1 /tmp/expat
cd /tmp/expat

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.4.1

make
make check
make install

install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.4.1

rm -rf /tmp/expat