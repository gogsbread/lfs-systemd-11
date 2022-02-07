tar -xf $LFS/sources/Jinja2-3.0.1.tar.gz -C /tmp/
mv -v /tmp/Jinja2-3.0.1 /tmp/Jinja2
cd /tmp/Jinja2

python3 setup.py install --optimize=1

rm -rf /tmp/Jinja2