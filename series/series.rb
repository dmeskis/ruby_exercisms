require 'pry'
class Series

  def initialize(nums)
    @nums = nums.each_char
  end

  def slices(length)
    raise ArgumentError.new('IMPOSSIBLE!') unless @nums.size > length
    arr = []
    z = length - 1
    @nums.each_with_index  do |e, i|
      result = @nums[i..z].join
      arr << result unless result.length < length
      z += 1
    end
    arr
  end

end