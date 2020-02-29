class Isogram
  def self.isogram?(string)
    arr = string.downcase.split("")
    arr.delete("-")
    arr.delete(" ")
    arr.count == arr.uniq.count
  end
end

