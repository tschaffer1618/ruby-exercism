class Prime
  def self.nth(num)
    raise ArgumentError unless num > 0 && num.is_a?(Integer)
    primes = []
    until primes.length == num
      if primes.empty?
        primes << 2
      else
        start = primes[-1]
        possible_prime = start + 1
        while primes[-1] == start
          if primes.all? { |prime| possible_prime % prime != 0}
            primes << possible_prime
          else
            possible_prime += 1
          end
        end
      end
    end
    primes[-1]
  end
end

