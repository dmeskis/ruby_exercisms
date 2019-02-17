require 'pry'
class Grains
  BOARD_SIZE = 64

  def self.square(grains)
    if grains <= 0 || grains > BOARD_SIZE
      raise ArgumentError.new("Must be positive int and less than or equal to board size.")
    end
    # We subtract one from the range because we should not be doubling on the first square
    (1..grains-1).inject(1) do |sum, n|
      sum * 2
    end
  end

  def self.total
    square(BOARD_SIZE) * 2 - 1
  end

end