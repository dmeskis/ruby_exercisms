class Allergies
  attr_accessor :score

  ALLERGIES = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats'
  }

  def initialize(score)
    if score > 256
      @score = score % 256
    else
      @score = score
    end
  end

  def allergic_to?(allergy)
    list.include?(allergy)
  end

  def list
    @list ||= ALLERGIES.keys.reverse.each_with_object([]) do |key, arr|
      if (@score - key) >= 0
        @score = score - key
        arr << ALLERGIES[key]
      end
    end
  end

end