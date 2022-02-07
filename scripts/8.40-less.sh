tar -xf $LFS/sources/less-590.tar.gz -C /tmp/
mv -v /tmp/less-590 /tmp/less
cd /tmp/less

./configure --prefix=/usr --sysconfdir=/etc

make
make install

rm -rf /tmp/less
