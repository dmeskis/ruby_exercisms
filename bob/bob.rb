class Bob

  def self.hey(remark)
    if remark == remark.upcase && letters?(remark)
      if remark[-1] == '?'
        "Calm down, I know what I'm doing!"
      else
        "Whoa, chill out!"
      end
    elsif remark[-1] == '?'
      "Sure."
    else
      "Whatever."
    end
  end

  def self.letters?(string)
    string.chars.any? { |char| ('a'..'z').include? char.downcase }
  end

end
