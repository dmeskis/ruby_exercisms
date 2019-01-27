require 'pry'
class Board


  def self.transform(input)
    board_valid?(input)
    binding.pry
    input.map.with_index do |row, i|
      row.each_char.with_index do |char, ci|
        # binding.pry
      end
    end
  end

  def self.board_valid?(board)
    binding.pry
    raise ArgumentError unless board.first == "+------+" && board.last == "+------+" 
  end
end