class Phrase
  def initialize(string)
    @string = string.downcase.gsub(/[^a-z0-9'\s]/i, ' ')
  end

  def word_count
    hash = {}
    @string.split.each do |word|
      arr = word.split("")
      if arr[0] == "'" && arr[-1] == "'"
        arr.pop
        arr.shift
        word = arr.join
      end
      hash[word] ? hash[word] += 1 : hash[word] = 1
    end
    hash
  end
end

