
```ruby


[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

# Nested Array
# 1st element in index location 0                        2nd element in index location 1
          [[1, 2],                                          [3, 4]]


# .each iterates throug the "parent" array which contains 2 elements:  and array containing [1,2]  and an array containing [3, 4]

# on the firs iteration .each arr is referencing the first element of the parent array
# => [1, 2] 
# the code within the block:
#   puts arr.first 
# arr is referencing the first element of the parent array which is an array containing [1, 2]
# .first is referencing the first element of the array arr is referencing
# 1st element            2nd element
     [1           ,          2]
# on the first iteration the value 1 is printed to the screen
# the parent array has only 2 elements, so .each will iterate 2 times. 
# the second iteration, .first is referencing the first element of the 2nd element of the parent array
#  first element         2nd element
 [3               ,          4]
# so 3 is printed 
# 1
# 3
# [[1, 2], [3, 4]]
.each # returns the original array






