const { largestPrimeFactorOf } = require('./');
/**
 * The prime factors of 13195 are 5, 7, 13 and 29.
 *
 * What is the largest prime factor of the number 600851475143 ?
 */

describe(`#largestPrimeFactorOf`, () => {
  it.each`
    n               | expected
    ${13195}        | ${29}
    ${1001}         | ${13}
    ${70}           | ${7}
    ${20}           | ${5}
    ${600851475143} | ${6857}
  `('should return the smallest prime factor $n', ({ n, expected }) => {
    expect(largestPrimeFactorOf(n)).toBe(expected);
  });
});
