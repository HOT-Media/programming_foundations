A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

Examples:
```ruby
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements



A featured number is an odd number that is a multiple of 7,whose digits occur exactly once each. 

So, for example, 49 is a featured number, 
98 is not (it is not odd), 
97 is not (it is not a multiple of 7), 

and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument,
and returns the next featured number that is greater than the argument. 

Issue an error message if there is no next featured number.


next multiple of 7 past n 

12 
  14, even 
    21 odd, multiple of 7 
      21

20
  21 odd , multiple of 7

21
  28
    35 multiple of 7, odd 

find the next multiple of 7 after n 

find the gcm and lcm??

featured(12) == 21
featured(20) == 21
featured(21) == 35

look for the built in method that takes 2 arguments to calculate multiple and a recuring number

there are only 10 digits so it cant be any larger than 10 digits

1_234_567_890
 



calculate a table of the multiples of 7 all the way up to 9_999_999_999

put them in a collection


delete the even ones
delete the ones with duplicate numbers

sort the numbers

find the number in the array that is less than or == n
then return the next featured number





