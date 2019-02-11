#!/bin/bash
set -euo pipefail


# Questions:
# 1. --disable-numa required. Check on how to enable it
# 2. --with-cuda is wrong in general.
# 3. --with-gdrcopy is probably wrong

./configure --prefix="$PREFIX" \
    --disable-cma \
    --disable-numa \
    --with-cuda="/usr/local/cuda"
    --enable-mt

make install
