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