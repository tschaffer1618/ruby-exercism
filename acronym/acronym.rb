class Acronym
  def self.abbreviate(str)
    abbr = ""
    str.split(/[\s-]/).each do |word|
      abbr += word[0].capitalize if word[0]
    end
    abbr
  end
end

