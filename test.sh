#!/usr/bin/env bash

LLVM_TESTS="
CodeGen/SPARC/intrinsics.ll
"

CLANG_TESTS="
CodeGen/sparc-builtins.c
"

for t in $CLANG_TESTS
do
  ./build/bin/llvm-lit "llvm-dev/tools/clang/test/$t"
done

for t in $LLVM_TESTS
do
  ./build/bin/llvm-lit "llvm-dev/test/$t"
done
