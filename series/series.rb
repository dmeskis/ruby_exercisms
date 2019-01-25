require 'pry'
class Series

  def initialize(nums)
    @nums = nums.chars
  end

  def slices(length)
    raise ArgumentError.new('IMPOSSIBLE!') unless @nums.length >= length
    @nums.each_cons(length).map(&:join)
  end

end