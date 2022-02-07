tar -xf $LFS/sources/linux-5.13.12.tar.xz -C /tmp/
mv -v /tmp/linux-5.13.12 /tmp/linux
cd /tmp/linux

make mrproper

make headers
find usr/include -name '.*' -delete
rm usr/include/Makefile
cp -rv usr/include $LFS/usr

rm -rf /tmp/linux