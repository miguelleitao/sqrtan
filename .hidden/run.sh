
git clone git@github.com:miguelleitao/sqrtan.git
cd sqrtan
ls

cp .hidden/Makefile .
make
ls
./sqrtan 45

git checkout -b autotools
ls
cp .hidden/Makefile.am .
cp .hidden/configure.ac .
ls
aclocal
automake -a
autoconf
ls
git add Makefile.am configure.ac
git add compile install-sh missing depcomp
git commit -m "autotools files"
git add Makefile.in configure
git commit -m "autotools targets"
git push 


./configure
ls

make
ls
./sqrtan 45




