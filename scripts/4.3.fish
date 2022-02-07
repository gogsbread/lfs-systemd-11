groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs
passwd lfs

chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
if test (uname -m) = "x86_64"
    echo "x86_64"
    chown -v lfs $LFS/lib64
else
    echo "not x86_64"
end

