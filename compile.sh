#!/bin/sh
docker run --rm -v $(pwd):/src trzeci/emscripten emcc -O3 -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' fib.c -o ./fib/fib.js