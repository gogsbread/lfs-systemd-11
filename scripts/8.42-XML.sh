tar -xf $LFS/sources/XML-Parser-2.46.tar.gz -C /tmp/
mv -v /tmp/XML-Parser-2.46 /tmp/XML
cd /tmp/XML

perl Makefile.PL

make
make test
make install

rm -rf /tmp/XML

