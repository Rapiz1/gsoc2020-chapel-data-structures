private use ListNG;

config const testIters = 8;

record foo {
  var arr: [1..testIters] int;
}

var lst: listng(foo);

// Deliberately try to insert at a bad index.
for i in 1..testIters {
  const x = new foo();
  lst.insert(-1, x);
}


