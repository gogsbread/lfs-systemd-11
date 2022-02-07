tar -xf $LFS/sources/tar-1.34.tar.xz -C /tmp/
mv -v /tmp/tar-1.34 /tmp/tar
cd /tmp/tar

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr

make
make check
make install

make -C doc install-html docdir=/usr/share/doc/tar-1.34

rm -rf /tmp/tar
