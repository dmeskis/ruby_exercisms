require 'pry'
class RailFenceCipher

  def self.encode(string, rails)
    string = string.gsub(/\s+/, "") unless rails == 1
    result = ''
    rails.times do |x|
      binding.pry
      result << string
    end
    result
  end
end