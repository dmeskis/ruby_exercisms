require 'pry'
class Raindrops

  def self.convert(num)
    raindrop_speak = factors_of(num).each_with_object('') do |factor, string|
      if sounds[factor] then string << sounds[factor] end
    end
    raindrop_speak.empty? ? num.to_s : raindrop_speak
  end

  private

  def self.sounds
    {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
  end

  def self.factors_of(num)
    (1..num).select { |n| num % n == 0}
  end
end