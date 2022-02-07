tar -xf $LFS/sources/make-4.3.tar.gz -C /tmp/
mv -v /tmp/make-4.3 /tmp/make
cd /tmp/make

./configure --prefix=/usr
make
make check
make install

rm -rf /tmp/make