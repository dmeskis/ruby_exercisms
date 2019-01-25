require 'pry'
class Phrase
  attr_reader :phrase, :counts

  def initialize(phrase)
    @phrase = phrase
    @counts = Hash.new(0)
  end

  def word_count
    parsed.each { |word| counts[word] += 1 }
    counts
  end


  def parsed
    phrase.scan(/\w+(?:'\w+)*/).map(&:downcase)
  end

end
