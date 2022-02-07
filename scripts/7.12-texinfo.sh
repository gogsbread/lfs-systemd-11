tar -xf sources/texinfo-6.8.tar.xz -C /tmp/
mv -v /tmp/texinfo-6.8 /tmp/texinfo
cd /tmp/texinfo

sed -e 's/__attribute_nonnull__/__nonnull/' \
    -i gnulib/lib/malloc/dynarray-skeleton.c

./configure --prefix=/usr

make
make install

rm -rf /tmp/texinfo