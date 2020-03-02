class Complement
  MAPPING = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}.freeze

  def self.of_dna(string)
    final = ""
    string.each_char do |char|
      final += MAPPING[char]
    end
    final
  end
end

