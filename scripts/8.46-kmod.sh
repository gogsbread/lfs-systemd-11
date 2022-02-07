tar -xf $LFS/sources/kmod-29.tar.xz -C /tmp/
mv -v /tmp/kmod-29 /tmp/kmod
cd /tmp/kmod

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --with-xz              \
            --with-zstd            \
            --with-zlib

make
make install

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /usr/sbin/$target
done

ln -sfv kmod /usr/bin/lsmod

rm -rf /tmp/kmod
