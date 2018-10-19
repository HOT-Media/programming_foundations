Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Examples:
```ruby

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


[3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2)

put the first index into an Array
put that array into another array
put the first 2 indexes into an array then put into other array
put all 3 indexes into an arry then into other array then flatten then sum


[[3], [3, 5],[3, 5, 2]]


[[3], [3, 5],[3, 5, 2]].flatten
=> [3, 3, 5, 3, 5, 2]
[[3], [3, 5],[3, 5, 2]].flatten.sum
=> 21

arr.each with object ( |idx| collection_arr, idx)

collection arr << idx  


array1 = [1, 2, 3]
array2 = ['a', 'b', 'c']

result = []
  array1.each_with_index do | collector_array, index|
    result << collector_array << array2[index]
  end
result


0 
0 and 1
0 and 1 and 2

                                   3?    5?
sum_of_arr = [3, 5, 2].inject do |memo, word|
  
  memo + word 
end  
=> "sheep"
dog 


(5..10).reduce(:+) 



[3, 5, 2]) == 

(3) + (3 + 5) + (3 + 5 + 2)



(3) + 
(3 + 5) + 
(3 + 5 + 2)

iterate through original array
put the first element into an array
put the 1st and second element into another array

arr.map do |idx|
  idx

  each iteration make a new array one longer











def sum_of_sums(arr)

  collector = [arr[0]]
  arr.length.times do |num|
    collector << arr[0..num + 1]  
  end  
  collector.map{ |idx| idx.sum}.sum
end



collector
=> [[1, 2], [1, 2, 3], [1, 2, 3]]


collector.map{ |idx| idx.sum}.sum










def sum_of_sums(arr)

  collector = [arr[0]]
  arr.length.times do |num|
    collector << arr[0..num + 1]  
  end  
  collector.map{ |idx| idx.sum}.sum
end


collector = [arr[0]]
=> [3]
arr.length.times do |num|  
  collector << arr[0..num + 1]      
end      
=> 3
collector
=> [3, [3, 5], [3, 5, 2], [3, 5, 2]]














