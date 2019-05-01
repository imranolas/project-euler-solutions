const { subject, sumMultiplesOf } = require('./');

/**
 * If we list all the natural numbers below 10 that are multiples of 3 or 5,
 * we get 3, 5, 6 and 9. The sum of these multiples is 23.
 *
 * Find the sum of all the multiples of 3 or 5 below 1000.
 */

describe('#sumMultiplesOf', () => {
  it.each`
    n    | p     | result
    ${3} | ${10} | ${18}
    ${3} | ${13} | ${30}
    ${3} | ${12} | ${18}
    ${5} | ${10} | ${5}
  `('should return $result', ({ n, p, result }) => {
    expect(sumMultiplesOf(n, p)).toBe(result);
  });
});

describe('#subject', () => {
  it.each`
    n          | expected
    ${10}      | ${23}
    ${1000}    | ${233168}
    ${10000}   | ${23331668}
    ${100000}  | ${2333316668}
    ${1000000} | ${233333166668}
  `('should sum multiples of 3 and 5 for $n', ({ n, expected }) => {
    expect(subject(n)).toBe(expected);
  });
});
