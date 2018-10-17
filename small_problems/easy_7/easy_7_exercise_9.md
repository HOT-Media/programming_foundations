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















