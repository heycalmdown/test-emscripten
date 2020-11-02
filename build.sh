#!/bin/bash

set -e

export OPTIMIZE="-Os"
export LDFLAGS="${OPTIMIZE}"
export CFLAGS="${OPTIMIZE}"
export CXXFLAGS="${OPTIMIZE}"

#-s EXPORT_ES6=1 \
echo "============================================="
echo "Compiling wasm bindings"
echo "============================================="
(
  # Compile C/C++ code
  emcc \
    ${OPTIMIZE} \
    --bind \
    --no-entry \
    -s STRICT=1 \
    -s ALLOW_MEMORY_GROWTH=1 \
    -s MALLOC=emmalloc \
    -s MODULARIZE=1 \
    -o ./my-module.js \
    src/my-module.cpp

  # Create output folder
  mkdir -p dist
  # Move artifacts
  mv my-module.{js,wasm} dist
  cp src/index.js dist
)
echo "============================================="
echo "Compiling wasm bindings done"
echo "============================================="
