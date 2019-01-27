class Squares
  attr_reader :num
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..num).sum ** 2
  end

  def sum_of_squares
    (0..num).sum {|n| n ** 2}
  end

  def difference
    square_of_sum - sum_of_squares
  end

end