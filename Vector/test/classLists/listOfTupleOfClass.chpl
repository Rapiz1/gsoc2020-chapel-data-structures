class MyInt { var x: int; }

use ListNG;
var l1 = new listng((int, owned MyInt?));
var l2 = new listng((int, shared MyInt?));
l1.append((1, new owned MyInt?(1)));
l1.append((2, new owned MyInt?(2)));
l2.append((3, new shared MyInt?(3)));
l2.append((4, new shared MyInt?(4)));
writeln(l1);
writeln(l2);
