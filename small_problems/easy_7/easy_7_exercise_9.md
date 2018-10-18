Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array
that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:
```ruby
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


arr_one.count  # => 2
element_counter = 0

# multiply the first element of arr_one with all the elemenst of arr_two then the second element
# of arr_one with all the elements of arr_two 


arr_one = [2, 4]
arr_two = [4, 3, 1, 2]
new_arr = []
arr_one.count  # => 2
element_counter = 0
loop do

  break if element_counter == arr_one.count #=>2

  new_arr = arr_two.map { |idx| idx * arr_one[element_counter]}
  element_counter += 1
 # 0,1
end

new_arr

new_arr
=> [16, 12, 4, 8]

stack element 0 on element 0


0 with 0
0 with 1
0 with 2
0 with 3
1 with 0 
1 with 1
1 with 2
1 with 3


arr_one = [2, 4]
arr_two = [4, 3, 1, 2]
new_arr = []

return a new array with the product of each multiplication thing

arr_one.map do |arr_one_idx|
# 2
# 4
  arr_two.map {|arr_two_idx| arr_two_idx * arr_one_idx} # return new array of 2 * ..
end





arr_one.map do |arr_one_idx|
  arr_one_idx * arr_two


# 2
# 4
  arr_two.map {|arr_two_idx| arr_two_idx * arr_one_idx} # return new array of 2 * ..
end


[2, 4][4, 3, 1, 2]

element_index = 0



arr_one.map do |idx|

  arr_two.length.times do
  idx * arr_two[element_index]



arr_two.length.times do |x| 
  new_arr << arr_two[x] * arr_one[0]  
end  
=> 4
new_arr
=> [8, 6, 2, 4]


arr_one.map do |idx|


arr_two.length.times do |x| 
  new_arr << arr_two[x] * arr_one[0]  
end  
end



arr_two.map do |x| 
  new_arr << x * arr_one[0]  
end  
end


arr_one.length => 2

arr_one + arr_two
=> [2, 4, 4, 3, 1, 2]

arr_one.product(arr_two)



arr_one.product(arr_two)
=> [[2, 4], [2, 3], [2, 1], [2, 2], [4, 4], [4, 3], [4, 1], [4, 2]]


multiply_nested_arrays = arr_one.product(arr_two)




multiply_nested_arrays = arr_one.product(arr_two)
=> [[2, 4], [2, 3], [2, 1], [2, 2], [4, 4], [4, 3], [4, 1], [4, 2]]


multiply_nested_arrays.map do |idx|
  idx[0] * idx[1]
end



multiply_nested_arrays.map { |idx| idx[0] * idx[1]}.sort

def multiply_all_pairs(arr_one, arr_two)
  arr_one.product(arr_two).map { |idx| idx[0] * idx[1]}.sort
end





















