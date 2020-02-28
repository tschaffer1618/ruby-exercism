class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.length != second.length
    differences = 0
    first = first.split("")
    second = second.split("")
    first.each_with_index do |char, i|
      differences += 1 if char != second[i]
    end
    differences
  end
end

