tar -xf sources/man-pages-5.13.tar.xz -C /tmp/
mv -v /tmp/man-pages-5.13 /tmp/man
cd /tmp/man

make prefix=/usr install

rm -rf /tmp/man