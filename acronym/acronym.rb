class Acronym

  def self.abbreviate(phrase)
    phrase.downcase.scan(/\w|\s|/) == phrase.downcase.scan(/\w|\s|/).uniq
  end
end
