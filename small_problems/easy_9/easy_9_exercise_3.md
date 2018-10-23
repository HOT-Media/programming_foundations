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


# How do you make x negative?
x = 3
-x
=> -3
-number.abs

In this statement, -3 is returned because 3 is greater than 0 

# What does the ternary operator mean?

  ?  if true  :  if false

number = 3
number > 0 ?      -number : number
  3    > 0 true      -3


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


*************************************************LS 


def negative(number)
  number > 0 ? -number : number
end

There are only two choices here. Either make the number negative and return it or return the already negative number. This is the perfect place for a ternary.



def negative(number)
  -number.abs
end


This works by flipping the problem on the head. It straightaway converts it to a positive number with Numeric abs and then prepends it with a negative operator to make it negative. abs returns the absolute value of a number (the non-negative value of a number without regard to its sign).

So instead of operating by checking the value and proceeding based on the evaluation, the opposite can be applied by stripping it of its sign, then giving it the negative sign.

























