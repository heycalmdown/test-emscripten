const wasmModule = require('./my-module');

wasmModule().then((module) => {
  try {
    module.sayHell();
  } catch (e) {
    console.log(e);
    setTimeout(() => {
      module.sayHello();
    }, 1000);
  }
});
