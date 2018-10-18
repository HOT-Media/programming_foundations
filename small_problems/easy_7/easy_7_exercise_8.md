Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:
```ruby

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]






combine arrays so the elements are [0][0]  

[3, 5, 7], [9, 10, 11]
[[3,9,],[5,10], [7,11]]




arr_one = [3, 5, 7]
arr_two = [9, 10, 11]


combined_arr = []
arr_one.length

3.times do |idx|
  combined_arr << arr_one[idx]
  combined_arr << arr_two[idx]
end



combined_arr.map { |idx| idx[0] * idx[1]} => [27,50,77]










3.times do |idx|
  combined_arr << arr_one[idx]
  combined_arr << arr_two[idx]
end



combined_arr
=> [3, 9, 5, 10, 7, 11]
combined_arr.slice(0,2)
=> [3, 9]
combined_arr
=> [3, 9, 5, 10, 7, 11]
combined_arr.slice!(0,2)
=> [3, 9]
combined_arr
=> [5, 10, 7, 11]


pair_product = []

pair_product << combined_arr.slice!(0,2).reduce(:*)

pair_product << combined_arr.slice!(0,2).reduce(:*)
=> [50]
pair_product << combined_arr.slice!(0,2).reduce(:*)
=> [50, 77]


def multiply_list(arr_one, arr_two)
  combined_arr = []
  pair_product = []
  arr_one.length.times do |idx|
    combined_arr << arr_one[idx]
    combined_arr << arr_two[idx]
  end

  loop do
  pair_product << combined_arr.slice!(0,2).reduce(:*)
  break if combined_arr.empty?
  end

  pair_product
end

combined_arr
=> [3, 9, 5, 10, 7, 11]
combined_arr.slice(0,2)
=> [3, 9]
combined_arr
=> [3, 9, 5, 10, 7, 11]
combined_arr.slice!(0,2)
=> [3, 9]
combined_arr
=> [5, 10, 7, 11]



arr_one = [3, 5, 7,] , arr_two = [9, 10, 11]

def multiply_list(arr_one, arr_two)
  pair_product = []
  arr_one.length.times do |idx|
    pair_product << arr_one[idx] * arr_two[idx]
  end
end

def multiply_list(arr_one, arr_two)
  arr_one.map { |idx| idx * arr_two[idx] }
end



def multiply_list(arr_one, arr_two)
  combined_arr = []
  pair_product = []
  arr_one.length.times do |idx|
    combined_arr << arr_one[idx]
    combined_arr << arr_two[idx]
  end

  loop do
  pair_product << combined_arr.slice!(0,2).reduce(:*)
  break if combined_arr.empty?
  end

  pair_product
end




def multiply_list(arr_one, arr_two)
  new_arr = []
  arr_one.each_with_index{|element, index| new_arr << element * arr_two[index]}
  new_arr
end


def multiply_list(arr_one, arr_two)
  new_arr = []
  arr_one.each_with_index{|element, index| new_arr << element * arr_two[index]}
  new_arr
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]



*************************************************JMX


def multiply_list(arr_one, arr_two)
  new_arr = []
  arr_one.each_with_index do |element, index|
    new_arr << element * arr_two[index]
  end
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]













