set -x LFS /lfs/build
set -x lfs /lfs/build
set -x MAKEFLAGS -j4
set -x LFS_TGT x86_64-lfs-linux-gnu

ln -s (which gawk) /usr/bin/awk

if not test -e /root/.vimrc
    wget https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim -O /root/.vimrc
end

