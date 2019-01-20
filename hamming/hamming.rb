require 'pry'
class Hamming

  def self.compute(a, b)
    if a.length != b.length
      raise ArgumentError.new('Strings must be equal length.')
    end
    compare_strands(a, b)
  end

  def self.compare_strands(a, b)
    a.each_char.with_index.count do |e, i|
      e != b[i]
    end
  end
  
end