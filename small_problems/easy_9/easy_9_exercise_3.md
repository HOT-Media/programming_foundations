Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

Examples;
```ruby

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby


-(num) if num positive
else 
  num


if positive, return negative


if negative return original


num = 4, positive
num == (-num)
=> false


1.abs == 1

-1.abs !=1

num = 1



num.abs == num

num = 1
=> 1
num.abs
=> 1
num = -1
=> -1
num.abs == num
=> false
num = 1
=> 1
num.abs == num
=> true



if the number is positive make it negative
  otherwise return the original number

*************************************************JMX

def negative(num)
  num = (-num) if num.abs == num
  num
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  



































