tar -xf $LFS/sources/grub-2.06.tar.xz -C /tmp/
mv -v /tmp/grub-2.06 /tmp/grub
cd /tmp/grub

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make
make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions

rm -rf /tmp/grub
