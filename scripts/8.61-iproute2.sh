tar -xf $LFS/sources/iproute2-5.13.0.tar.xz -C /tmp/
mv -v /tmp/iproute2-5.13.0 /tmp/iproute2
cd /tmp/iproute2

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

sed -i 's/.m_ipt.o//' tc/Makefile

make
make SBINDIR=/usr/sbin install

mkdir -v              /usr/share/doc/iproute2-5.13.0
cp -v COPYING README* /usr/share/doc/iproute2-5.13.0

rm -rf /tmp/iproute2