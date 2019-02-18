require 'pry'
class Triangle
  attr_reader :arr

  def initialize(arr)
    @arr = arr
  end

  def equilateral?
    if @arr.all? {|i| i == 0}
      return false
    end
    @arr.uniq.length == 1
  end

  def isosceles?
    valid_triangle? && (@arr.uniq.length == 2 || equilateral?)
  end

  def valid_triangle?
    if @arr[0] + @arr[1] >= @arr[2] && @arr[1] + @arr[2] >= @arr[0] && @arr[0] + @arr[2] >= @arr[1]
      true
    else
      false
    end
  end

end