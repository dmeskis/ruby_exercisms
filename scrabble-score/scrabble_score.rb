class Scrabble
  attr_reader :word
  ONE = /(a|e|i|o|u|l|n|r|s|t)/i
  TWO = /(d|g)/i
  THREE = /(b|c|m|p)/i
  FOUR = /(f|h|v|w|y)/i
  FIVE = /(k)/i
  EIGHT = /(j|x)/i
  TEN = /(q|z)/i

  def initialize(word)
    @word = clean_string(word)
  end

  def score
    Scrabble.score(word)
  end

  def self.score(word)
    score_regex.reduce(0) { |sum, (k, v)| sum + word.scan(v).count * k }
  end

  private

  def self.score_regex
    {1 => ONE, 2 => TWO, 3 => THREE, 4 => FOUR, 5 => FIVE, 8 => EIGHT, 10 => TEN}
  end

  def clean_string(string)
    string.nil? ? '' : string.gsub(/[^0-9a-z ]/i, '')
  end
end