tar -xf $LFS/sources/zstd-1.5.0.tar.gz -C /tmp/
mv -v /tmp/zstd-1.5.0 /tmp/zstd
cd /tmp/zstd

make
make check
make prefix=/usr install

rm -v /usr/lib/libzstd.a

rm -rf /tmp/zstd
