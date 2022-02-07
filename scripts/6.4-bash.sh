tar -xf $LFS/sources/bash-5.1.8.tar.gz -C /tmp/
mv -v /tmp/bash-5.1.8 /tmp/bash
cd /tmp/bash

./configure --prefix=/usr                   \
            --build=$(support/config.guess) \
            --host=$LFS_TGT                 \
            --without-bash-malloc

make
make DESTDIR=$LFS install
ln -sv bash $LFS/bin/sh

rm -rf /tmp/bash