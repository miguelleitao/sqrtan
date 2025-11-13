# sqrtan
Minimal application to calculate the square root of the trignometric tangent of an angle in degrees.

This repository is aimed to be used as input for a tutorial demo on building tools.

## Full demo:

#### Install
```
  git clone git@github.com:miguelleitao/sqrtan.git
  cd sqrtan
```
#### Basic Makefile
```
  make src0
  cd workdir
  cat sqrt.c
  make
  ./sqrt 60
  cd ..
```
#### Makefile & config.h
```
  make config.h
  cd workdir
  cat sqrt.c
  cat config.h
  make
  ./sqrt 60
  nm -u sqrt
  cd ..
```
#### Autotools
```
  make autotools
  cd workdir
  cat Makefile.am
  autoscan
  cat configure.scan
  cp configure.scan configure.ac
  vi configure.ac
  aclocal
  autoconf
  autoheader
  automake --add-missing
  ./configure
  make
  ./sqrtan 60
  make dist
  #make install
  cd ..
```

```
  cp workdir/*.tgz .
  tar xzf *.tgz
  cd sqrt-*
  ./configure
  make
  make install
  cd ..
```

#### CMake
```
  make cmake
  cd workdir
  cat CMakeLists.txt
  cat config.h.in
  cmake .
  make
  ./sqrtan 60
  cd ..
```

