// @flow

function isMultipleOf(n, i) {
  return i % n === 0;
}

/**
 * Calculate using a geometric sequence
 **/
function sumMultiplesOf(n, p) {
  const N = Math.floor((p - 1) / n);
  return (n * (N * (N + 1))) / 2;
}

exports.sumMultiplesOf = sumMultiplesOf;

exports.subject = (n /*: number */) => {
  return sumMultiplesOf(3, n) + sumMultiplesOf(5, n) - sumMultiplesOf(15, n);
};
