require 'pry'
class Raindrops

  SOUNDS = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(num)
    raindrop_speak = factors_of(num).map { |factor, speech| SOUNDS[factor] ? SOUNDS[factor] : '' }.join
    raindrop_speak.empty? ? num.to_s : raindrop_speak
  end

  private

  def self.factors_of(num)
    (1..Math.sqrt(num)).each_with_object([]) do |i, factors|
      if num % i == 0
        if num / i == i
          factors << i
        else
          factors << i
          factors << num/i
        end
      end
    end
  end
end