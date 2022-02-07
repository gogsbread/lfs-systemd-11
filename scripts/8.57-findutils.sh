tar -xf $LFS/sources/findutils-4.8.0.tar.xz -C /tmp/
mv -v /tmp/findutils-4.8.0 /tmp/findutils
cd /tmp/findutils

./configure --prefix=/usr --localstatedir=/var/lib/locate

make
chown -Rv tester .
su tester -c "PATH=$PATH make check"
make install

rm -rf /tmp/findutils
