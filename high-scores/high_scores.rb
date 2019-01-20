class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores[-1]
  end

  def highest
    scores.max
  end

  def top
    scores.max(3)
  end

  def report
    "Your latest score was #{latest}. #{report_message}"
  end

  def report_message
    latest >= highest ? "That's your personal best!" : "That's #{highest - latest} short of your personal best!"
  end
end
