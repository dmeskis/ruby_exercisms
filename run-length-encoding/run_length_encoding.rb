require 'pry'
class RunLengthEncoding

  def self.encode(input)
    encoded = input.scan(/((.)\2{0,})/).each do |pair|
      pair[0] = pair[0].length
      if pair[0] == 1 then pair.shift end
    end
    encoded.join
  end

  def self.decode(input)
    pairs = (input).scan(/(\d*)(\D)/)
    decoded = pairs.map do |pair|
      times = pair[0].to_i
      times = times > 1 ? times : 1
      pair[1] * times
    end
    decoded.join
  end


end
