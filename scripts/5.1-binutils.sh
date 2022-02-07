
tar -xf $LFS/sources/binutils-2.37.tar.xz -C /tmp/
mv -v /tmp/binutils-2.37 /tmp/binutils
cd /tmp/binutils

mkdir -v build
cd build

../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --disable-werror

make
make install -j1

rm -rf /tmp/binutils