require 'pry'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
    @result = []
  end

  def match(match_array)
    match_array.each do |match|
      if match.downcase.split('').sort == char_array 
        @result << match unless @word.downcase == match.downcase
      end
    end
    @result
  end

  def char_array
    word.downcase.split('').sort
  end

end