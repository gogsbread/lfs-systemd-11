tar -xf $LFS/sources/bash-5.1.8.tar.gz -C /tmp/
mv -v /tmp/bash-5.1.8 /tmp/bash
cd /tmp/bash

./configure --prefix=/usr                      \
            --docdir=/usr/share/doc/bash-5.1.8 \
            --without-bash-malloc              \
            --with-installed-readline

make

chown -Rv tester .

su -s /usr/bin/expect tester << EOF
set timeout -1
spawn make tests
expect eof
lassign [wait] _ _ _ value
exit $value
EOF

make install
exec /bin/bash --login +h

rm -rf /tmp/bash