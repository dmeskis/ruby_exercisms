require 'pry'

class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    create_rows_and_columns(string)
  end

  private

    def create_rows_and_columns(string)
      rows = string.lines.map(&:strip)
      @rows = rows.map {|num| num.split.map(&:to_i) }
      @columns = @rows.transpose
    end

end
