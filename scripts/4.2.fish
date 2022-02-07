mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin
    ln -sv usr/$i $LFS/$i
end

if test (uname -m) = "x86_64"
    echo "It is x86_64"
    mkdir -pv $LFS/lib64
end

mkdir -pv $LFS/tools


