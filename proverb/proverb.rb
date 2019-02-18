class Proverb
  attr_reader :words

  def initialize(*words)
    @words = words
    @proverb = ''
    @final = words.first
    check_for_qualifier
  end

  def to_s
    words.each_with_index do |word, i|
      next_index = i + 1
      @proverb << "For want of a #{word} the #{words[i+1]} was lost.\n" unless next_index > words.length - 1
    end
    @proverb << "And all for the want of a #{@final}."
  end

  private

  def check_for_qualifier
    words.each_with_index do |element, i|
      if element.is_a?(Hash)
        qualifier = words.slice!(i).values.first
        @final = "#{qualifier} #{@final}"
      end
    end
  end

end