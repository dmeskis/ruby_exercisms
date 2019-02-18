require 'pry'
class Complement
  COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  def self.of_dna(dna)
    dna.gsub(/./) { |n| COMPLEMENTS[n]}
  end
end