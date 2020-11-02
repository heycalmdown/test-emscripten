# test-emscripten

```
❯ npm run build

> my-worldchanging-project@ build /Users/kson/Development/test/test-emscripten
> docker run --rm -v $(pwd):/src trzeci/emscripten ./build.sh

=============================================
Compiling wasm bindings
=============================================
cache:INFO: generating system library: libembind-rtti.a... (this will be cached in "/emsdk_portable/.data/cache/wasm/libembind-rtti.a" for subsequent builds)
cache:INFO:  - ok
cache:INFO: generating system library: libemmalloc-64bit.a... (this will be cached in "/emsdk_portable/.data/cache/wasm/libemmalloc-64bit.a" for subsequent builds)
cache:INFO:  - ok
=============================================
Compiling wasm bindings done
=============================================
❯ node dist/index.js
RuntimeError: unreachable
    at wasm-function[82]:0x1e66
    at wasm-function[70]:0x1b4b
    at wasm-function[47]:0x10a5
    at Module.dynCall_ii (/Users/kson/Development/test/test-emscripten/dist/my-module.js:9:36639)
    at dynCall_ii_3 (eval at makeDynCaller (/Users/kson/Development/test/test-emscripten/dist/my-module.js:9:25089), <anonymous>:2:12)
    at Object.sayHell (eval at new_ (/Users/kson/Development/test/test-emscripten/dist/my-module.js:9:20529), <anonymous>:5:10)
    at /Users/kson/Development/test/test-emscripten/dist/index.js:5:12
```