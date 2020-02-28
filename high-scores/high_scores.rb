class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.pop
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    ranked_scores = @scores.sort
    [ranked_scores[-1], ranked_scores[-2], ranked_scores[-3]].compact
  end

  def latest_is_personal_best?
    self.personal_best == self.latest
  end
end

