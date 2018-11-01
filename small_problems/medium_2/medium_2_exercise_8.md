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


featured(12) == 21
featured(20) == 21
featured(21) == 35

there are only 10 digits so it cant be any larger than 10 digits

1_234_567_890
 

A featured number is an odd number that is a multiple of 7,whose digits occur exactly once each. 

calculate the next multiple
is that multiple even or odd
  odd
    do the digits occurr only once
      yes numbers occurr once => number to string to array to uniq == number to string to array
      10 digits, no duplicates 
    no there are duplicate numbers
    calculate the next multiple
    same thing until the number is odd with no repeating digits



12, find the next featured number 

find the previous multiple of 7

start calculation with 12 - 1 % 7 == 0 true or false
                       12 - 2 10
                       12 - 3
                       12 - 4
                       12 - 5 => 7 % 7 = 0
 
count = 7
loop 
n - 1
12 - 1 % 7 == 0



*******************************Previous

n = 12
find_previous_multiple_of_seven = n
loop do
  n -= 1 # 11,10,9,8,7
 break if  n%7 == 0
end



n = 12
=> 12
loop do
  n -= 1 # 11,10,9,8,7  
  break if  n%7 == 0 
end  
=> nil
n
=> 7



find the next multple of 7

n = 7

loop do
  n += 7
 break if n.odd? && n.to_s.chars.uniq == n.to_s.chars
end





numbers occurr once => number to string to array to uniq == number to string to array


n.to_s.chars.uniq == n.to_s.chars








n = 12
=> 12
loop do
  n -= 1 # 11,10,9,8,7  
  break if  n%7 == 0 
end  
=> nil
n
=> 7



find the next multple of 7

n = 7

loop do
  n += 7
 break if n.odd? && n.to_s.chars.uniq == n.to_s.chars
end







featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987





def featured(num)
  loop do
    num -= 1 # 11,10,9,8,7  
    break if  num%7 == 0 
  end  

  loop do
    num += 7
   break if num.odd? && num.to_s.chars.uniq == num.to_s.chars
  end
  num
end


if the num is already a multiple of 7 then calculate the next featured number



*************************************************JMX
ERROR_MESSAGE = 'There is no possible number that fulfills those requirements.'

def featured(num)
  if num > 9_876_543_210
    ERROR_MESSAGE
  elsif num % 7 == 0
    num
  else
    loop do
      num -= 1
      break if num % 7 == 0
    end
  end

  loop do
    num += 7
    break if num.odd? && num.to_s.chars.uniq == num.to_s.chars
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987




















