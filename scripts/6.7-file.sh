tar -xf $LFS/sources/file-5.40.tar.gz -C /tmp/
mv -v /tmp/file-5.40 /tmp/file
cd /tmp/file

make build
pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd


./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess)

make FILE_COMPILE=$(pwd)/build/src/file
make DESTDIR=$LFS install

rm -rf /tmp/file