# sqrtan
Minimal application to calculate the square root of the trignometric tangent of an angle in degrees.

This repository is aimed to be used as input for a tutorial demo on building tools.

CREATE TARBALL:
aclocal
autoconf
autoheader
automake --add-missing
./configure
make
./sqrtan 60
make dist

BUILD:
tar xzf sqrtan-*.tar.gz
cd sqrtan-*
./configure
make
./sqrtan 60
make install

