tar -xf $LFS/sources/gcc-11.2.0.tar.xz -C /tmp/
mv -v /tmp/gcc-11.2.0 /tmp/gcc
cd /tmp/gcc

sed -e '/static.*SIGSTKSZ/d' \
    -e 's/return kAltStackSize/return SIGSTKSZ * 4/' \
    -i libsanitizer/sanitizer_common/sanitizer_posix_libcdep.cpp

case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac

mkdir -v build
cd       build

../configure --prefix=/usr            \
             LD=ld                    \
             --enable-languages=c,c++ \
             --disable-multilib       \
             --disable-bootstrap      \
             --with-system-zlib

make
ulimit -s 32768
chown -Rv tester . 
su tester -c "PATH=$PATH make -k check"
../contrib/test_summary | grep -A7 Summ
# didn't completely run the testing

make install
# rm -rf /usr/lib/gcc/$(gcc -dumpmachine)/11.2.0/include-fixed/bits/

# chown -v -R root:root \
#     /usr/lib/gcc/*linux-gnu/11.2.0/include{,-fixed}

# ln -svr /usr/bin/cpp /usr/lib

# ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/11.2.0/liblto_plugin.so \
#         /usr/lib/bfd-plugins/

# rm -rf /tmp/gcc