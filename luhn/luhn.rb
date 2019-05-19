class Luhn

  def self.valid?(number)
    number = number.gsub(/\s+/, "") # Remove whitespace
    return false if number.match(/\D+/) # return false if number contains non digits
    return false unless number.length > 1 # return false if number contains only one digit
    number.reverse.split('').each_with_index.map do |n, i|
      n = n.to_i
      n = n * 2 if i.odd?
      n = n - 9 if n > 9
      n
    end.sum % 10 == 0
  end

end