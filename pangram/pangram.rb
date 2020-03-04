class Pangram
  def self.pangram?(string)
    string.downcase.gsub(/[^a-z]/,"").split("").uniq.count == 26
  end
end

