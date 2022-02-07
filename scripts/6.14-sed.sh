tar -xf $LFS/sources/sed-4.8.tar.xz -C /tmp/
mv -v /tmp/sed-4.8 /tmp/sed
cd /tmp/sed

./configure --prefix=/usr   \
            --host=$LFS_TGT

make
make DESTDIR=$LFS install

rm -rf /tmp/sed
