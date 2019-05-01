exports.largestPrimeFactorOf = function largestPrimeFactorOf(n) {
  let current = n;
  let largest;
  let i = 2;

  while (i * i < current) {
    if (current % i === 0) {
      current = current / i;
      largest = i;
    } else {
      i++;
    }
  }

  if (current > largest) {
    return current;
  }

  return largest;
};
