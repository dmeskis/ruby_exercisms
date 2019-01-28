require 'pry'
class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end


  def words
    phrase.scan(/\w+(?:'\w+)*/)
  end

  private

  attr_reader :phrase, :counts

end
