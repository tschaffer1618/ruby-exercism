class Clock
  attr_reader :hour, :minute

  def initialize(hash)
    if hash[:minute]
      @minute = hash[:minute]
    else
      @minute = 0
    end

    if hash[:hour]
      @hour = hash[:hour]
    else
      @hour = 0
    end
  end

  def fix_hour(num)
    if num >= 24
      until num < 24
        num -= 24
      end
    elsif num < 0
      until num >= 0
        num += 24
      end
    end
    num
  end

  def fix_minute(num)
    if num >= 60
      until num < 60
        num -= 60
        @hour += 1
      end
    elsif num < 0
      until num >= 0
        num += 60
        @hour -= 1
      end
    end
    num
  end

  def to_s
    minute = fix_minute(@minute).to_s.rjust(2, "0")
    hour = fix_hour(@hour).to_s.rjust(2, '0')
    hour + ":" + minute
  end

  def +(second_clock)
    total_hour = self.hour + second_clock.hour
    total_minute = self.minute + second_clock.minute
    hash = {hour: total_hour, minute: total_minute}
    Clock.new(hash)
  end

  def -(second_clock)
    total_hour = self.hour - second_clock.hour
    total_minute = self.minute - second_clock.minute
    hash = {hour: total_hour, minute: total_minute}
    Clock.new(hash)
  end

  def ==(second_clock)
    self.to_s == second_clock.to_s
  end
end

