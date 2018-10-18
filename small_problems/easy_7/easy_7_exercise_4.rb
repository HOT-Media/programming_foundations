def swapcase(str)
  word_array = str.split(' ')
  word_array.map! do |word|
    new_str = word.split(//).map! do |chr|
      if chr.match?(/[^a-zA-Z]/)
        chr
      elsif chr == chr.upcase
        chr.downcase
      else
        chr.upcase
      end
    end
    new_str.join
  end
  word_array.join(" ")
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
