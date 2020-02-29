class Luhn
  def self.valid?(string)
    string = string.downcase.gsub(/\s+/, "")
    return false if string.length == 1 || !(/\A[+-]?\d+\z/.match?(string))
    arr = string.split("").reverse
    total = 0
    arr.each_with_index do |char, i|
      num = char.to_i
      if i.odd?
        num *= 2
        num -= 9 if num >= 10
      end
      total += num
    end
    total % 10 == 0
  end
end
