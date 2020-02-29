class Scrabble
  def initialize(string)
    @string = string
  end

  def score
    total = 0
    if @string
      @string.each_char do |char|
        char = char.downcase
        case char
        when "a", "e", "i", "o", "u", "l", "n", "r", "s", "t" then total += 1
        when "d", "g" then total += 2
        when "b", "c", "m", "p" then total += 3
        when "f", "h", "v", "w", "y" then total += 4
        when "k" then total += 5
        when "j", "x" then total += 8
        when "q", "z" then total += 10
        end
      end
    end
    total
  end

  def self.score(string)
    Scrabble.new(string).score
  end
end

