class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    has_sides? && sides.uniq.length == 1
  end

  def isosceles?
    has_sides? && valid_triangle? && ( sides.uniq.length == 2 || equilateral? )
  end

  def scalene?
    has_sides? && valid_triangle? && sides.uniq.length == 3
  end

  private

  def has_sides?
    sides.any? { |i| i != 0 }
  end

  def valid_triangle?
    sides[0] + sides[1] >= sides[2] && 
    sides[1] + sides[2] >= sides[0] && 
    sides[0] + sides[2] >= sides[1] ?
    true :
    false
  end

end