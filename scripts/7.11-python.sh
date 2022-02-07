tar -xf sources/Python-3.9.6.tar.xz -C /tmp/
mv -v /tmp/Python-3.9.6 /tmp/python
cd /tmp/python

./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip

make
make install

rm -rf /tmp/python


