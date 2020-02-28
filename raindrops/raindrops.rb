class Raindrops
  def self.convert(num)
    final_sound = ""
    final_sound += "Pling" if num % 3 == 0
    final_sound += "Plang" if num % 5 == 0
    final_sound += "Plong" if num % 7 == 0
    final_sound += num.to_s if final_sound.empty?
    final_sound
  end
end

