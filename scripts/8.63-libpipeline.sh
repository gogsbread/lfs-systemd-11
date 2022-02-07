tar -xf $LFS/sources/libpipeline-1.5.3.tar.gz -C /tmp/
mv -v /tmp/libpipeline-1.5.3 /tmp/libpipeline
cd /tmp/libpipeline

./configure --prefix=/usr

make
make check
make install

rm -rf /tmp/libpipeline