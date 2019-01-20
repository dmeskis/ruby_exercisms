require 'pry'
class Series

  def initialize(nums)
    @nums = nums.split('')
  end

  def slices(length)
    if @nums.length < length then raise ArgumentError.new('IMPOSSIBLE!') end
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