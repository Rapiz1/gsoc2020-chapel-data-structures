private use ListNG;

config const testIters =8;

var lst: listng(int);

for i in 1..testIters do
  lst.append(i);

const elem = lst.pop(testIters + 1);

