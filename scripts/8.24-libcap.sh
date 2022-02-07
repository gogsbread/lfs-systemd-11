tar -xf $LFS/sources/libcap-2.53.tar.xz -C /tmp/
mv -v /tmp/libcap-2.53 /tmp/libcap
cd /tmp/libcap

sed -i '/install -m.*STA/d' libcap/Makefile

make prefix=/usr lib=lib

make test
make prefix=/usr lib=lib install
chmod -v 755 /usr/lib/lib{cap,psx}.so.2.53

rm -rf /tmp/libcap