tar -xf $LFS/sources/gcc-11.2.0.tar.xz -C /tmp/
mv -v /tmp/gcc-11.2.0 /tmp/gcc
tar -xf $LFS/sources/mpfr-4.1.0.tar.xz -C /tmp/gcc
mv -v /tmp/gcc/mpfr-4.1.0 /tmp/gcc/mpfr
tar -xf $LFS/sources/gmp-6.2.1.tar.xz -C /tmp/gcc
mv -v /tmp/gcc/gmp-6.2.1 /tmp/gcc/gmp
tar -xf $LFS/sources/mpc-1.2.1.tar.gz -C /tmp/gcc
mv -v /tmp/gcc/mpc-1.2.1 /tmp/gcc/mpc
cd /tmp/gcc

case $(uname -m) in
    x86_64)
      sed -e '/m64=/s/lib64/lib/' \
    -i.orig gcc/config/i386/t-linux64

esac

mkdir -v build
cd build

../configure                                       \
    --target=$LFS_TGT                              \
    --prefix=$LFS/tools                            \
    --with-glibc-version=2.11                      \
    --with-sysroot=$LFS                            \
    --with-newlib                                  \
    --without-headers                              \
    --enable-initfini-array                        \
    --disable-nls                                  \
    --disable-shared                               \
    --disable-multilib                             \
    --disable-decimal-float                        \
    --disable-threads                              \
    --disable-libatomic                            \
    --disable-libgomp                              \
    --disable-libquadmath                          \
    --disable-libssp                               \
    --disable-libvtv                               \
    --disable-libstdcxx                            \
    --disable-bootstrap                            \
    --enable-languages=c,c++

make
make install 

cd ..
cat gcc/limitx.h gcc/glimits.h gcc/limity.h > \
 `dirname $($LFS/tools/bin/$LFS_TGT-gcc -print-libgcc-file-name)`/install-tools/include/limits.h

rm -rf /tmp/gcc