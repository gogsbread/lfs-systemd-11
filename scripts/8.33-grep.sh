tar -xf $LFS/sources/grep-3.7.tar.xz -C /tmp/
mv -v /tmp/grep-3.7 /tmp/grep
cd /tmp/grep

./configure --prefix=/usr

make
make check
make install

rm -rf /tmp/grep
