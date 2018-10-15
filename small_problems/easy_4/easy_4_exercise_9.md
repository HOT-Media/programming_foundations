Convert a Number to a String

In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. 

In this exercise and the next, youre going to reverse those methods.

Write a method that takes a positive integer or zero,and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, 
such as Integer to_s, String(), Kernel format, etc. 

Your method should do this the old-fashioned way and 
construct the string by analyzing and manipulating the number.




Examples
```ruby


INT_STR_KV_PAIRS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}



def integer_to_string(integer_input)
  integer_input.digits.reverse.map { |idx| INT_STR_KV_PAIRS[idx] }.join
end

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'



DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end




def integer_to_string(number)
  result = ''
  loop do
    # number will be assigned the first element of the divmod array

    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

number = 4321
=> 4321
number, remainder = number.divmod(10)
=> [432, 1]
number
=> 432
remainder
=> 1
number, remainder = number.divmod(10)
=> [43, 2]
number
=> 43
remainder
=> 2
number, remainder = number.divmod(10)
=> [4, 3]
number
=> 4
remainder
=> 3
number, remainder = number.divmod(10)
=> [0, 4]
number
=> 0
remainder
=> 4


integer_to_string(4321) == '4321'

























