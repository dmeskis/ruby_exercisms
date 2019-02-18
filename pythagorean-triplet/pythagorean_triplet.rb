require 'pry'
class Triplet
  attr_reader :a, :b, :c
  def initialize(*args)
    binding.pry
    @a = a
    @b = b
    @c = c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a ** 2 + b ** 2 == c ** 2
  end

  def where(args)

  end
end