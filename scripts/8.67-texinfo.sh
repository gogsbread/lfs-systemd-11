tar -xf $LFS/sources/texinfo-6.8.tar.xz -C /tmp/
mv -v /tmp/texinfo-6.8 /tmp/texinfo
cd /tmp/texinfo

./configure --prefix=/usr

sed -e 's/__attribute_nonnull__/__nonnull/' \
    -i gnulib/lib/malloc/dynarray-skeleton.c

make
make check
make install

make TEXMF=/usr/share/texmf install-tex

rm -rf /tmp/texinfo