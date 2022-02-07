tar -xf $LFS/sources/inetutils-2.1.tar.xz -C /tmp/
mv -v /tmp/inetutils-2.1 /tmp/inetutils
cd /tmp/inetutils

./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers

make
make check
make install

mv -v /usr/{,s}bin/ifconfig

rm -rf /tmmp/inetutils
