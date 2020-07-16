use Ordered;
use OsetTest;

config param impl: orderedImpl;
config const testIters = 8;



proc doTest(type eltType) {
  var s1 = new orderedSet(eltType, false, defaultComparator, impl);
  var s2 = new orderedSet(eltType, false, defaultComparator, impl);

  assert(s1 >= s2);
  assert(s2 >= s1);

  for i in 1..testIters {
    var x = i:eltType;
    s1.add(x);
  }

  assert(s1 >= s1);
  assert(s2 >= s2);

  assert(s1 >= s2);
  assert(!(s2 >= s1));

  for i in 1..(testIters * 2) {
    var x = i:eltType;
    s2.add(x);
  }

  assert(s1 >= s1);
  assert(s2 >= s2);

  assert(!(s1 >= s2));
  assert(s2 >= s1);

  for x in s1 do
    if s2.contains(x) then
      try! s2.remove(x);

  assert(!(s1 >= s2));
  assert(!(s2 >= s1));
}

doTest(int);
doTest(testRecord);

