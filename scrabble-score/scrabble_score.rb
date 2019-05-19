class Scrabble
  attr_reader :word
  SCORE_REGEX = {
    1 => /(a|e|i|o|u|l|n|r|s|t)/i,
    2 => /(d|g)/i,
    3 => /(b|c|m|p)/i,
    4 => /(f|h|v|w|y)/i,
    5 => /(k)/i,
    8 => /(j|x)/i,
    10 => /(q|z)/i
  }
  private_constant :SCORE_REGEX

  def initialize(word)
    @word = word.to_s
  end

  def score
    SCORE_REGEX.sum {|score, regex| word.scan(regex).count * score}
  end

  def self.score(word)
    new(word).score
  end
end
