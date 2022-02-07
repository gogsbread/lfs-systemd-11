tar -xf $LFS/sources/ncurses-6.2.tar.gz -C /tmp/
mv -v /tmp/ncurses-6.2 /tmp/ncurses
cd /tmp/ncurses

sed -i s/mawk// configure

mkdir build
pushd build
  ../configure
  make -C include
  make -C progs tic
popd

./configure --prefix=/usr                \
            --host=$LFS_TGT              \
            --build=$(./config.guess)    \
            --mandir=/usr/share/man      \
            --with-manpage-format=normal \
            --with-shared                \
            --without-debug              \
            --without-ada                \
            --without-normal             \
            --enable-widec

make
make DESTDIR=$LFS TIC_PATH=$(pwd)/build/progs/tic install

echo "INPUT(-lncursesw)" > $LFS/usr/lib/libncurses.so

rm -rf /tmp/ncurses