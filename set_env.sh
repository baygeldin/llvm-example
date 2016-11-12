#!/usr/bin/env bash

svn co http://llvm.org/svn/llvm-project/llvm/tags/RELEASE_390/final/ llvm-src
svn co http://llvm.org/svn/llvm-project/cfe/tags/RELEASE_390/final llvm-src/tools/clang
cp -R llvm-src llvm-dev

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD="Sparc" -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_ENABLE_ZLIB=OFF ../llvm-dev
