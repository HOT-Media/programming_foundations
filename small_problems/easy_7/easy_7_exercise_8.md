Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:
```ruby

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


combine arrays so the elements are [0][0]  

[3, 5, 7], [9, 10, 11]
[[3,9,],[5,10], [7,11]]
arr_one arr_two

combined_arr.map { |idx| idx[0] * idx[1]} => [27,50,77]