class Robot
  attr_reader :name

  def initialize
    @name = [*('A'..'Z')].sample(2).join + [*('0'..'9')].sample(3).join
  end

  def self.forget

  end

  def reset
    @name = nil
    @name = [*('A'..'Z')].sample(2).join + [*('0'..'9')].sample(3).join
  end
end

