class Isogram

  def self.isogram?(input)
    scanned = input.downcase.scan(/\w/i)
    scanned == scanned.uniq
  end
end
