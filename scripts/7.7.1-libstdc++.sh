tar -xf sources/gcc-11.2.0.tar.xz -C /tmp/
mv -v /tmp/gcc-11.2.0 /tmp/gcc
cd /tmp/gcc

ln -s gthr-posix.h libgcc/gthr-default.h

mkdir -v build
cd build

../libstdc++-v3/configure            \
    CXXFLAGS="-g -O2 -D_GNU_SOURCE"  \
    --prefix=/usr                    \
    --disable-multilib               \
    --disable-nls                    \
    --host=$(uname -m)-lfs-linux-gnu \
    --disable-libstdcxx-pch

make
make install 

rm -rf /tmp/gcc