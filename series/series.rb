require 'pry'
class Series

  def initialize(nums)
    @nums = nums.chars
  end

  def slices(length)
    raise ArgumentError.new('IMPOSSIBLE!') unless @nums.length >= length
    @nums.each_with_index.collect do |e, i|
      @nums[i..i+length-1].join unless @nums[i..i+length].length < length
    end.compact
  end

end