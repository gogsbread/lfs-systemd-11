tar -xf sources/gettext-0.21.tar.xz -C /tmp/
mv -v /tmp/gettext-0.21 /tmp/gettext
cd /tmp/gettext

./configure --disable-shared

make

cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin

rm -rf /tmp/gettext