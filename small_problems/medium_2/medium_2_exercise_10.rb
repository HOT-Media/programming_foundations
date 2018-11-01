def square_of_sum(arr)
  arr.sum**2
end

def sum_of_squares(arr)
  (arr.map { |number| number**2 }).sum
end

def sum_square_difference(n)
  arr = Array 1..n
  square_of_sum(arr) - sum_of_squares(arr)
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
