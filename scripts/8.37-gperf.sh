tar -xf $LFS/sources/gperf-3.1.tar.gz -C /tmp/
mv -v /tmp/gperf-3.1 /tmp/gperf
cd /tmp/gperf

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1

make
make -j1 check
make install

rm -rf /tmp/gperf
