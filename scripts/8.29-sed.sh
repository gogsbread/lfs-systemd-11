tar -xf $LFS/sources/sed-4.8.tar.xz -C /tmp/
mv -v /tmp/sed-4.8 /tmp/sed
cd /tmp/sed

./configure --prefix=/usr

make
make html

chown -Rv tester .
su tester -c "PATH=$PATH make check"

make install
install -d -m755           /usr/share/doc/sed-4.8
install -m644 doc/sed.html /usr/share/doc/sed-4.8

rm -rf /tmp/sed