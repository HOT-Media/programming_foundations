The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. 

This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate.

For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. 

(The first Fibonacci number has index 1.)

Examples:
```ruby
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
You may assume that the argument is always greater than or equal to 2.


which is the first fibonaccci number to have 2 digits? the 7th
integer arg = 2 ( fibonaccci digits)


find_fibonacci_index_by_length(2)
=> 7

calculate fibonaccci numbers starting with integer 1

record the iterations up to the 2 digit number


1 1 2 3 5 8 13 => break

break if fn.to_s.length == 3

output the number

FIRST_FIB_NUM = 1


int_arg = 2 # => first fib number to have 2 digits

int_arg

f(n-1)+f(n-2)



the 7th fib number is 8   glitch.

0
0+ 1 1
1
1+ 1 2
2

next_num_calculation_array = []

arr =[1,1]

arr.sum => 2

next_num_calculation_array[0], next_num_calculation_array[1] = arr[1], arr.sum => [1,1]    5    8    13
                                                                  [1]       2     [1,2],  2,3   3,5  5,8   8,13   


arr[0], arr[1] = 5 , 10
=> [5, 10]


int_arg = 2

fib_arr =[1,1]




first fib number that has an index of 2, => 13
if digits = int_arg break




int_arg = 2
fib_arr =[1,1]
accumulator = []
fibonaccci_number = 0


loop do 
  fibonaccci_number += 0
  accumulator << fib_arr[1]
  accumulator << fib_arr.sum
  break if accumulator.sum.to_s.length == int_arg
  accumulator.clear
end

fibonaccci_number





accumulator << fib_arr[1]
  accumulator << fib_arr.sum



fib_arr[0], fib_arr[1]  = fib_arr[1], fib_arr[fib_arr.sum]
break if fib_arr.sum.to_s.length == int_arg







accumulator << fib_arr[1]
=> [1]

accumulator << fib_arr.sum
=> [1, 2]

break if accumulator.sum.to_s.length == int_arg



loop do 



add 1 to 1
take that sum and put it in an array then add 





int_arg = 2
fib_arr =[1,1] # => 
fibonaccci_number = 



fib_arr =[0,1] 

fib_arr =[0,1].sum => 1, fib 2


fibonaccci_number = 2  1
fibonaccci_number = 3  2







index_length = 10 000
fib_arr =[0,1]
  fibonaccci_number = 2

  loop do
    fib_arr[0], fib_arr[1]  = fib_arr[1], fib_arr.sum
    fibonaccci_number += 1
    break if fib_arr.sum.to_s.length == index_length
  end







*************************************************JMX

def find_fibonacci_index_by_length(index_length)
  fib_arr =[0,1]
  fibonaccci_number = 2

  loop do
    fib_arr[0], fib_arr[1]  = fib_arr[1], fib_arr.sum
    fibonaccci_number += 1
    break if fib_arr.sum.to_s.length == index_length
  end

  fib_arr.sum
  fibonaccci_number
end























