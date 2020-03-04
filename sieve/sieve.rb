class Sieve
  def initialize(ceiling)
    @ceiling = ceiling
  end

  def primes
    arr_of_primes = []
    arr_to_check = (2..@ceiling).to_a
    arr_to_check.each do |number|
      arr_of_primes << number
      i = 2
      until i * number > @ceiling
        not_prime = i * number
        arr_to_check.delete(not_prime)
        i += 1
      end
    end
    arr_of_primes
  end
end
