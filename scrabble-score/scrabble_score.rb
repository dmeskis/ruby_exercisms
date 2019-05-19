class Scrabble
  attr_reader :word
  ONE = /(a|e|i|o|u|l|n|r|s|t)/i
  TWO = /(d|g)/i
  THREE = /(b|c|m|p)/i
  FOUR = /(f|h|v|w|y)/i
  FIVE = /(k)/i
  EIGHT = /(j|x)/i
  TEN = /(q|z)/i
  SCORE_REGEX = {1 => ONE, 2 => TWO, 3 => THREE, 4 => FOUR, 5 => FIVE, 8 => EIGHT, 10 => TEN}
  private_constant :ONE, :TWO, :THREE, :FOUR, :FIVE, :EIGHT, :TEN, :SCORE_REGEX

  def initialize(word)
    @word = word.to_s
  end

  def score
    Scrabble.score(word)
  end

  def self.score(word)
    SCORE_REGEX.reduce(0) { |sum, (score, regex)| sum + word.scan(regex).count * score }
  end
end
