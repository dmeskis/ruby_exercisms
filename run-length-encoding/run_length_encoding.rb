require 'pry'
class RunLengthEncoding

  def self.encode(input)
    result = ''
    char_count = 0
    prev_char = input[0]
    input.each_char.with_index do |char, i|
      if char == prev_char && i < input.length - 1
        prev_char = char
        char_count += 1
      else
        if i == input.length - 1
          if char == prev_char
            char_count += 1
            result << "#{char_count}#{prev_char}"
          elsif char_count > 1
            result << "#{char_count}#{prev_char}#{char}"
          else
            result << "#{prev_char}#{char}"
          end
        elsif char_count > 1
          result << "#{char_count}#{prev_char}"
          char_count = 1
          prev_char = char
        else
          result << prev_char
          char_count = 1
          prev_char = char
        end
      end
    end
    result
  end

end
