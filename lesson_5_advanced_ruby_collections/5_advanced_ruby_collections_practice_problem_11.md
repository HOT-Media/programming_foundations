Given the following data structure

use a combination of methods, including either the select or reject method, 

to return a new array identical in structure to the original

but containing only the integers that are multiples of 3

```ruby
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]


identical structure means 3 sub arrays 

arr.map do |sub_array| 
  sub_array.delete_if{ |element| element % 3 != 0}
end


*************************************************JMX
arr.map do |sub_array| 
  sub_array.delete_if{ |element| element % 3 != 0}  
end  
=> [[], [3], [9], [15]]










