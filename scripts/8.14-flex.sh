tar -xf $LFS/sources/flex-2.6.4.tar.gz -C /tmp/
mv -v /tmp/flex-2.6.4 /tmp/flex
cd /tmp/flex

make
make check
make install

ln -sv flex /usr/bin/lex

rm -rf /tmp/flex
