The String to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 

String to_i and the Integer constructor (Integer()) behave similarly. 

In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 

You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; 
assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, 
such as String to_i, Integer(), etc. 

Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.


string_to_integer('4321') == 4321

('4321').split(//)
=> ["4", "3", "2", "1"]
   


split apart the string
iterate through the split array and 
identify which one of the 10 integers is represented in string form in each index position
collect each number
return each number

case
if "1" then 1



split each string 


"1" = 1
"2" = 2
etc

hash key "1"   hash value 1
{"1" => 1,}


SUBPROCESS=> collect all new numbers


Su
```ruby
string_integer = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}


string_integer.fetch_values('0','4')




string_to_integer('4321')



'4321'.split
=> ["4321"]
   '4321'.split('')
=> ["4", "3", "2", "1"]
   '4321'.split('').map do |idx|
    string_integer.fetch_values(idx)
  end

[[4], [3], [2], [1]]


def string_to_integer(string_input)
string_integer = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}
  converted_integer = 0
  new_integer_array = string_input.split('').map do |idx|
    string_integer.fetch_values(idx)
  end

  new_integer_array.flatten.each do |idx|
    converted_integer = 10 * converted_integer + 4 
  end
converted_integer
end

sum = 0

sum = converted_integer * 10 + 4




  assign new value to converted_integer
converted integer now = converted integer, 0 * 10, 0 + 4 => 4
converted integer now = converted integer, 4 * 10, 40, + 3 => 43

converted_integer *= 10 + idx













10 * 0 + 4 -> 4
10 * 4 + 3 -> 43
10 * 43 + 1 -> 431

converted_integer = 0





string_integer = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}

def string_to_integer(hash_input, string_input)
  converted_to_integer = 0
  new_integer_array = string_input.split('').map do |idx|
   hash_input.fetch_values(idx)
  end

  new_integer_array.flatten.map do |idx|
    converted_to_integer = 10 * converted_to_integer + idx 
  end
  converted_to_integer
end

string_to_integer string_integer,"4321"










Using a constant


STRING_INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string_input)
  integer_array = string_input.chars.map {|idx| idx = STRING_INTEGER[idx]}

  integer_output = 0
  integer_array.map {|idx| integer_output = 10 * integer_output + idx}
  integer_output
end

string_to_integer '4321'
































