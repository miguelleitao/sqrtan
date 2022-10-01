# sqrtan
Minimal application to calculate the square root of the trignometric tangent of an angle in degrees.

This repository is aimed to be used as input for a tutorial demo on building tools.

Full demo:

```
  make src0
  cd workdir
  cat sqrt.c
  make
  ./sqrt 60
  cd ..
```
```
  make makefile
  cd workdir
  cat sqrt.c
  cat config.h
  make
  ./sqrt 60
  cd ..
```
```
  make autotools
  cd workdir
  cat config.ca
  cat Makefile.am
  aclocal
  autoconf
  autoheader
  automake --add-missing
  ./configure
  make
  ./sqrtan 60
  cd ..
```
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

