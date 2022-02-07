tar -xf $LFS/sources/groff-1.22.4.tar.gz -C /tmp/
mv -v /tmp/groff-1.22.4 /tmp/groff
cd /tmp/groff

PAGE=<paper_size> ./configure --prefix=/usr

make -j1
make install

rm -rf /tmp/groff
