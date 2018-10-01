
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



# cMake
git checkout master
ls
git checkout -b cmake
cp .hidden/cmake/CMakeLists0.txt CMakeLists.txt
cat CMakeLists.txt
cmake .
ls
make
ls
./sqrtan 45

cp .hidden/cmake/CMakeLists1.txt CMakeLists.txt
cp .hidden/cmake/sqrtan1.c sqrtan.c
cp .hidden/cmake/config.h.in .
cat CMakeLists.txt
cat sqrtan.c
cmake .
ls
make
ls
./sqrtan 45

cp .hidden/cmake/CMakeLists2.txt CMakeLists.txt
#cp .hidden/cmake/sqrtan2.c sqrtan.c
cat CMakeLists.txt
cat sqrtan.c
cmake .
ls
make
ls
./sqrtan 45


cp .hidden/cmake/CMakeLists3.txt CMakeLists.txt
cp .hidden/cmake/sqrtan3.c sqrtan.c
cat CMakeLists.txt
cat sqrtan.c
cmake .
ls
make
ls
./sqrtan 45

cp .hidden/cmake/CMakeLists4.txt CMakeLists.txt
cp .hidden/cmake/sqrtan4.c sqrtan.c
cat CMakeLists.txt
cat sqrtan.c
cmake .
ls
make
ls
./sqrtan 45

git add CMakeLists.txt sqrtan.c
git commit -m "cmake file"
git push



