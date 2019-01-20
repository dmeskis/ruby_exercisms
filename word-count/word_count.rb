require 'pry'
class Phrase
  attr_reader :phrase, :counts

  def initialize(phrase)
    @phrase = phrase
    @counts = Hash.new(0)
  end

  def word_count
    phrase_fix.split.each do |word|
      counts[word] += 1
    end
    counts
  end


  def phrase_fix
    phrase.gsub(/\W^\'/x, ' ').downcase
  end

end
