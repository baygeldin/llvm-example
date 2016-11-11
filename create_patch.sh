#!/usr/bin/env bash

diff -urN -x '*.swp' llvm-src/ llvm-dev/ > hello.patch
