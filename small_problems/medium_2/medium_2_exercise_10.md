Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Examples:
```ruby
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150


```
According to an anecdote, the math genius Carl Friedrich Gauss, added all the numbers from 1 through 100 when he was at a very young age. The sum of the first positive 100 integers is 5050 and Gauss was able to give this sum in less than a minute. True or not, how can we get the sum of all these numbers with admirable speed? Well, it’s not really that hard
```ruby
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

square of the sum of the first n positive integers
(1 + 2 + 3)**2 
=>36

the sum of the squares of the first n positive integers.
(1**2 + 2**2 + 3**2)
=> 14

36-14 
=> 22







the square of the sum of 3
1+2+3

def helper_method_square_of_the_sum(n)
  sum_this_array = Array (1..n)


the sum of the squares of 




def helper_method_square_of_the_sum(n)
  sum_array = Array (1..n)
=> [1, 2, 3]
(sum_array.sum)**2
=> 36
end


the sum of the squares of
sum_of_squares_array = Array (1..n)
=> [1, 2, 3]

(sum_of_squares_array.map{|number| number ** 2}).sum
=> 14


first_positive_integers = Array (1..n)


def sum_square_difference(10)
  arr = Array (1..n)
  square_of_sum - sum_of_squares
end




  def square_of_sum(arr)
    (arr.sum)**2
  end


  def sum_of_squares(arr)
    (arr.map{|number| number ** 2}).sum
  end




*************************************************JMX

def square_of_sum(arr)
  (arr.sum)**2
end

def sum_of_squares(arr)
  (arr.map{|number| number ** 2}).sum
end

def sum_square_difference(n)
  arr = Array (1..n)
  square_of_sum(arr) - sum_of_squares(arr)
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150





