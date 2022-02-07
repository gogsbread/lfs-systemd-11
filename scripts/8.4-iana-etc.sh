tar -xf sources/iana-etc-20210611.tar.gz -C /tmp/
mv -v /tmp/iana-etc-20210611 /tmp/iana
cd /tmp/iana

cp services protocols /etc

rm -rf /tmp/iana