tar -xf $LFS/sources/MarkupSafe-2.0.1.tar.gz -C /tmp/
mv -v /tmp/MarkupSafe-2.0.1 /tmp/MarkupSafe
cd /tmp/MarkupSafe

python3 setup.py build

python3 setup.py install --optimize=1

rm -rf /tmp/MarkupSafe