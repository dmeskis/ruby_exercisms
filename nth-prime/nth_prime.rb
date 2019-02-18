class Prime

  def self.nth(num)
    raise ArgumentError.new("No zeroth prime.") unless num > 0
    arr = []
    n = 2
    until arr[num - 1] do
      if (2..n/2).none?{|i| n % i == 0}
        arr << n
      end
      n += 1
    end
    arr[num - 1]
  end

end