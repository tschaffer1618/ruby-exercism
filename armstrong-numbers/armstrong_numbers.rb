class ArmstrongNumbers
  def self.include?(num)
    power = num.to_s.length
    sum = num.to_s.split("").sum { |number| number.to_i ** power }
    sum == num
  end
end

