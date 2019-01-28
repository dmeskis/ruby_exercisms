require 'pry'
class Phrase
  # This regular expression separates all words from a string while ignoring punctuation outside of a word
  WORD_PARSER = /\w+(?:'\w+)*/

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end


  def words
    phrase.scan(WORD_PARSER)
  end

  private

  attr_reader :phrase

end
