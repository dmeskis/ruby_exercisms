require 'pry'
class Raindrops

  SOUNDS = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(num)
    raindrop_speak = SOUNDS.select {|k, _| (num % k).zero? }.values.join
    raindrop_speak.empty? ? num.to_s : raindrop_speak
  end

end