tar -xf $LFS/sources/intltool-0.51.0.tar.gz -C /tmp/
mv -v /tmp/intltool-0.51.0 /tmp/intltool
cd /tmp/intltool

sed -i 's:\\\${:\\\$\\{:' intltool-update.in

./configure --prefix=/usr

make
make check
make install

install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO

rm -rf /tmp/intltool
