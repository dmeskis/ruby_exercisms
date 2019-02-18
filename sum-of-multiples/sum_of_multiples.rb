require 'pry'
class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    multiples.each_with_object([]) do |n, multiples_array|
      multiple = n
      until multiple >= limit || multiple.zero?
        multiples_array << multiple
        multiple = multiple + n
      end
    end.uniq.sum
  end

end