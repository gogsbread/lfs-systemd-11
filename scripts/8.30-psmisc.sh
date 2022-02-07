tar -xf $LFS/sources/psmisc-23.4.tar.xz -C /tmp/
mv -v /tmp/psmisc-23.4 /tmp/psmisc
cd /tmp/psmisc

./configure --prefix=/usr

make
make install

rm -rf /tmp/psmisc