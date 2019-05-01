function* fibonacci() {
  let i1 = 1;
  let i2 = 1;
  let current = 1;
  while (true) {
    yield current;
    i1 = i2;
    i2 = current;
    current = i1 + i2;
  }
}

exports.fibonacci = fibonacci;

exports.sumOfEvenSmallerThan = function sumOfEvenSmallerThan(n) {
  let total = 0;
  for (const value of fibonacci()) {
    if (value > n) {
      break;
    }

    if (value % 2 === 0) {
      total = total + value;
    }
  }
  return total;
};
