Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version.

All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:
```ruby

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


CASE_HASH = {"a"=>"A",
 "b"=>"B",
 "c"=>"C",
 "d"=>"D",
 "e"=>"E",
 "f"=>"F",
 "g"=>"G",
 "h"=>"H",
 "i"=>"I",
 "j"=>"J",
 "k"=>"K",
 "l"=>"L",
 "m"=>"M",
 "n"=>"N",
 "o"=>"O",
 "p"=>"P",
 "q"=>"Q",
 "r"=>"R",
 "s"=>"S",
 "t"=>"T",
 "u"=>"U",
 "v"=>"V",
 "w"=>"W",
}

works for lowercase to uppercase

str.split(" ").map {|idx| CASE_HASH[idx] || CASE_HASH.fetch_value(idx)}


'CamelCase' == 'cAMELcASE'





str = 'CamelCase'

new_str = str.split(//).map do |idx|
  if idx == idx.upcase 
    idx.downcase
  else
    idx.upcase
  end
end
new_str.join




split the string by spaces then by words


split the string into words

str.split (' ')







*************************************************JMX
def swapcase(str)
  word_array = str.split (' ') 
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











