class PrimeGenerator

  require 'set'

  # Find all the primes up to "n" argument using the Sieve of Eratosthenes method
  def generate(n = 100)

    # Sanitise input
    n = [n.to_i, 2].max

    # Calculate prime candidates, calculating products and crossing them from a list
    candidates = (2..n).to_set

    i = 2
    while i**2 < n
      product = i**2
      while product <= n
        candidates.delete product
        product += i
      end
      i += 1
    end

    return candidates.to_a.sort
  end

end
