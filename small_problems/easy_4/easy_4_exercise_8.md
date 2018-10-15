Convert a String to a Signed Number

In the previous exercise, you developed a method that converts simple numeric strings to Integers. 

In this exercise, youre going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 

The String may have a leading + or - sign;
+ if the first character is a +, your method should return a positive number 
+ if it is a -, your method should return a negative number 
+ if no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, 
such as String to_i, Integer(), etc. You may, however, use the 
string_to_integer method from the previous lesson.

Examples
```ruby
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
```


get the number
does the number have a sign? if not, then uset the method from exc7
if the number has a + convert the string to a positive number
if the number has a - then convert the string to a negative number

if the string.start_with - prepend - to the integer

otherwise its a positive number

add a conditional if startwith - to the method from execise 7

```ruby
STRING_INTEGER_AND_SIGNS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '+' => +, '-' => -,
}


def string_to_integer(string_input)
  integer_array = string_input.chars.map {|idx| idx = STRING_INTEGER[idx]}

  integer_output = 0
  integer_array.map {|idx| integer_output = 10 * integer_output + idx}
  integer_output
end

string_to_integer '4321'



is there a sign
yes no

no 
procede with original method

string_input.include? '+' || '-'


dog
=> ["-", "5", "7", "0"]
sign = dog.shift
=> "-"
sign
=> "-"



STRING_INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

SIGNS = {'+' => +, '-' => -}




dog = '-570'.chars
=> ["-", "5", "7", "0"]
sign = dog.shift if dog.first == '-' || dog.first == '+'
=> "-"
sign
=> "-"
dog
=> ["5", "7", "0"]


STRING_INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_signed_integer(str)
  string_array = str.chars

  sign = string_array.shift if string_array.first == '-' || string_array.first == '+'

  number_array = string_array.map {|idx| STRING_INTEGER[idx]}


  sum = 0
  number_array.map {|idx| sum = 10 * sum + idx}

  if sign == '-'
    sum = -1 * sum
  end

  sum
end




p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100





My first solution



def string_to_signed_integer(str)
  string_array = str.chars

  if string_array.first == '-' || string_array.first == '+'
    sign = string_array.shift
  end

  number_array = string_array.map { |idx| STRING_INTEGER[idx] }

  sum = 0

  number_array.map { |idx| sum = 10 * sum + idx }

  if sign == '-'
    sum = -1 * sum
  end

  sum
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

*******











final solution




STRING_INTEGER_KV_PAIRS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string_input)
  integer_array = string_input.chars.map {|idx| idx = STRING_INTEGER_KV_PAIRS[idx]}
  integer_output_from_string_input = 0

  integer_array.map do |idx| 
    integer_output_from_string_input = 10 * integer_output_from_string_input + idx
  end

  integer_output_from_string_input

end

string_to_integer '4321'


def string_to_signed_integer(str)
  case str[0] # access the first charatcter of str  '-4321' => '-'
  when '-' then -string_to_integer(str[1..-1]) # make the return value of the method negative
                                              # and extract the characters from index 1 to the last index
  when '+' then string_to_integer(str[1..-1])
  else string_to_integer(str)
  end

end



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100



































def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end






p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100





def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end


















