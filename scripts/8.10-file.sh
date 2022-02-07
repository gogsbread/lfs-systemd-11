tar -xf $LFS/sources/file-5.40.tar.gz -C /tmp/
mv -v /tmp/file-5.40 /tmp/file
cd /tmp/file

./configure --prefix=/usr

make
make check
make install

rm -rf /tmp/file
