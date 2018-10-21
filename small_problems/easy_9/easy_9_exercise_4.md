Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:
```ruby
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]


*************************************************JMX


def sequence(num)
  Array(1..(num))
end



p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 





