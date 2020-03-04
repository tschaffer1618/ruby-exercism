class Integer
  def to_roman
    num = self
    roman_numeral = ""
    until num == 0
      if num >= 1000
        num -= 1000
        roman_numeral += "M"
      elsif num >= 900
        num -= 900
        roman_numeral += "CM"
      elsif num >= 500
        num -= 500
        roman_numeral += "D"
      elsif num >= 400
        num -= 400
        roman_numeral += "CD"
      elsif num >= 100
        num -= 100
        roman_numeral += "C"
      elsif num >= 90
        num -= 90
        roman_numeral += "XC"
      elsif num >= 50
        num -= 50
        roman_numeral += "L"
      elsif num >= 40
        num -= 40
        roman_numeral += "XL"
      elsif num >= 10
        num -= 10
        roman_numeral += "X"
      elsif num >= 9
        num -= 9
        roman_numeral += "IX"
      elsif num >= 5
        num -= 5
        roman_numeral += "V"
      elsif num >= 4
        num -= 4
        roman_numeral += "IV"
      elsif num >= 1
        num -= 1
        roman_numeral += "I"
      end
    end
    roman_numeral
  end
end
