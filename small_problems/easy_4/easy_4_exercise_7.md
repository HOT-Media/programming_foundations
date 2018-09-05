The String to_i method converts a string of numeric characters (including an optional plus or minus sign)
to an Integer. 

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


SUBPROCESS: collect all new numbers


Su
























