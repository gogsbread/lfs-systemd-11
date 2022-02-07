tar -xf $LFS/sources/gcc-11.2.0.tar.xz -C /tmp/
mv -v /tmp/gcc-11.2.0 /tmp/gcc
cd /tmp/gcc

mkdir -v build
cd build

../libstdc++-v3/configure           \
    --host=$LFS_TGT                 \
    --build=$(../config.guess)      \
    --prefix=/usr                   \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/11.2.0

make
make DESTDIR=$LFS install

rm -rf /tmp/gcc