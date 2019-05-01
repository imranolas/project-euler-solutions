# Sieve of Eratosthenes
# For finding all primes below a given number.

module PrimeSieve

  def sieve(num)
    arr = *(2..num)  
    p = arr.min
    while true
      new_arr = arr.reject { |i| (i % p == 0 ) && (i != p) }
      new_arr.length == arr.length ? break : arr = new_arr
      p = arr[arr.index(p)+1]
    end
    arr
  end

end