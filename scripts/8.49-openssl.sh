tar -xf $LFS/sources/openssl-1.1.1l.tar.gz -C /tmp/
mv -v /tmp/openssl-1.1.1l /tmp/openssl
cd /tmp/openssl

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make
make test
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-1.1.1l
cp -vfr doc/* /usr/share/doc/openssl-1.1.1l

rm -rf /tmp/openssl
