class Grains
  def self.square(num)
    raise ArgumentError unless (1..64).include?(num)
    2 ** (num - 1)
  end

  def self.total
    (0..63).sum { |x| 2 ** x }
  end
end

