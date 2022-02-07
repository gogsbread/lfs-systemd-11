tar -xf $LFS/sources/meson-0.59.1.tar.gz -C /tmp/
mv -v /tmp/meson-0.59.1 /tmp/meson
cd /tmp/meson

python3 setup.py build

python3 setup.py install --root=dest
cp -rv dest/* /
install -vDm644 data/shell-completions/bash/meson /usr/share/bash-completion/completions/meson
install -vDm644 data/shell-completions/zsh/_meson /usr/share/zsh/site-functions/_meson

rm -rf /tmp/meson
