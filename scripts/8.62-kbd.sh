tar -xf $LFS/sources/kbd-2.4.0.tar.xz -C /tmp/
mv -v /tmp/kbd-2.4.0 /tmp/kbd
cd /tmp/kbd

patch -Np1 -i sources/kbd-2.4.0-backspace-1.patch
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

./configure --prefix=/usr --disable-vlock

make
make check
make install

mkdir -v            /usr/share/doc/kbd-2.4.0
cp -R -v docs/doc/* /usr/share/doc/kbd-2.4.0

rm -rf /tmp/kbd
